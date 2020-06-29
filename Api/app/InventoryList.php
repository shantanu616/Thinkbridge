<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InventoryList extends Model
{
    protected $fillable = array('id', 'name','description','image_url','request_id','price','user_id');
}
