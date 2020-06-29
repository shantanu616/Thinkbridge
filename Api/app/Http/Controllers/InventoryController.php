<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use Cache;
use DB;
use Storage;
use App\User;
use Image_flav;
use App\InventoryList;
use Symfony\Component\HttpFoundation\Response;
class InventoryController extends Controller
{
/*--------------------------------CREATE CHANNEL--------------------------------------------*/
  public function createInventory(Request $request)
  {
    $dataForm = $request->all();
    $rules =[
      'name'=>'required',
      'description'=>'required',
      'price'=>'required|numeric',
      'file'=>'required'
   ];
   // $messages=[
   // 'name.regex'=> 'Only alphabets are allowed in name',
   // ];
   $validator = validator($dataForm, $rules);
   if ($validator->fails())
   {
     return response()->json([ 'success'=>3, 'error'=>$validator->errors()->all()]);
   }
    else 
    {
    	$file= $request->file;
        $extension = $file->getClientOriginalExtension();
        $fileName = str_replace(".".$extension, "", $file->getClientOriginalName()); // Filename without extension
        $fileName .= "_" . md5(time()) . "." . $extension;
        $mime = str_replace('/', '-', $file->getMimeType());
        $dateFolder = date("d-m-y");
        $main_url=config('constant.url');
        $host_url ="{$main_url}/image/{$dateFolder}/{$mime}/$fileName";
		$image = Image_flav::make($file);
		$path = Storage::put("/public/image/{$dateFolder}/{$mime}/$fileName", (string) $image->encode());
    	$data= InventoryList::create(['request_id'=>uniqid(),'user_id'=>$request->user()->id,'name' =>$request->name,'image_url' =>$host_url,'description' =>$request->description,'price' =>$request->price]);
    	$data->save();
    	if($data)
          {
              return response(array(
                  'success'=>1,
                  'msg'=>'Inventory created successfully!'
              ));
          }
          else
          {
              return response(array(
                  'success'=>0,
                  'msg'=>'Something went wrong!'
              ));
          }
    }
  }
  public function getDeleteData(Request $request,$id)
  {
  	switch ($request->method()) 
  	{
  		case 'GET':
  			$data=InventoryList::where('id',$id)->first();
			if($data)
	          {
	              return response(array(
	                  'success'=>1,
	                  'data'=>$data,
	                  'msg'=>'Inventory data!'
	              ));
	          }
	          else
	          {
	              return response(array(
	                  'success'=>0,
	                  'msg'=>'Something went wrong!'
	              ));
	          }
  		case 'DELETE':
  			$data = InventoryList::findOrFail($id);
  			if($data)
	          {
	          	  $data->delete();
	              return response(array(
	                  'success'=>1,
	                  'msg'=>'Inventory Deleted!'
	              ));
	          }
	          else
	          {
	              return response(array(
	                  'success'=>0,
	                  'msg'=>'Something went wrong!'
	              ));
	          }
  		default:
  			break;
  	}
  }
  public function getInventoryList(Request $request)
  {
		$data=InventoryList::orderBy('created_at','desc')->get();
		if($data)
	      {
	          return response(array(
	              'success'=>1,
	              'data'=>$data,
	              'msg'=>'Inventory data!'
	          ));
	      }
	      else
	      {
	          return response(array(
	              'success'=>0,
	              'msg'=>'Something went wrong!'
	          ));
	      }
  }
}
