<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Validator;
use Auth;
use Crypt;
use Cache;
use Symfony\Component\HttpFoundation\Response;
class AuthenticateController extends Controller
{
  /*--------------------REGISTER----------------------*/ 


  public function register(Request $request)
  {
	   $dataForm = $request->all();
	   $rules =[
	     'name' => 'required|regex:/^[a-zA-Z \s]+$/|min:3',
	     'email'=>'required|email|unique:users',
	     'password'=>'required'
	  ];
	  $messages=[
		'name.regex'=> 'Only alphabets are allowed in name',
		];
	  $validator = validator($dataForm, $rules,$messages);
	  if ($validator->fails())
	  {
	    return response()->json([ 'success'=>3, 'error'=>$validator->errors()->all()]);
	  }
	  else 
	  {
	     $name=$request->name;
	     $email=$request->email;
	     $password=bcrypt($request->password);
	     $user=new User();
	     $user->Accountid=uniqid();
	     $user->name=$name;
	     $user->email=$email;
	     $user->password=$password;
	     $user->save();
	     if($user)
	     {
	       return response(array(
	         'success'=>1,
	         'msg'=>'Successfully Created'
	       ),Response::HTTP_OK);
	     }
	     else 
	     {
	       return response(array(
	         'success'=>0,
	         'msg'=>'Something Went Wrong'
	       ),Response::HTTP_OK);
	     }
	 }
  }
  /*--------------------END REGISTER----------------------*/ 

  /*--------------------LOGIN------------------------------*/ 
  public function login(Request $request)
  {
      $dataForm = $request->all();
      $rules =[
        'email'=>'required|email',
        'password'=>'required'
     ];
     $validator = validator($dataForm, $rules);
     if ($validator->fails())
     {
       return response()->json([ 'success'=>3, 'error'=>$validator->errors()->all()]);
     }
     else 
     {
       $tag=$request->tag;
       $email=$request->email;
       $password=$request->password;
       $check=Auth::attempt(['email'=>$email,'password'=>$password,'status'=>1]);
       if($check)
       {
         $user =  Auth::user();
         $token = $user->createToken($tag)->accessToken;
         return response(array(
           'success'=>1,
           'user_id'=>Auth::user()->id,
           'email'=>Auth::user()->email,
           'name'=>Auth::user()->name,
           'account_id'=>Auth::user()->Accountid,
           'token'=>$token
         ),Response::HTTP_OK);
       }
       else 
       {
         return response(array(
            'success'=>0,
            'msg'=>'Not Authorized'
         ),Response::HTTP_OK);
       }
     }
  }

  /*--------------------END LOGIN--------------------------*/ 

  /*-------------------- LOGOUT--------------------------*/ 
  public function logout(Request $request)
  {
    $logout=$request->user()->token()->revoke();
    if($logout)
    {
      return response(array(
        'success'=>1,
        'msg'=>'You have been succesfully logged out!'
      ),Response::HTTP_OK);
    }
    else {
      return response(array(
        'success'=>0,
        'msg'=>'Something Went Wromg'
      ),Response::HTTP_OK);
    }
  }
  /*--------------------END LOGOUT--------------------------*/ 
}
