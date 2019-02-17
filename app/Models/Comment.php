<?php

namespace App\Models;

use App\Models\Traits\RbacCheck;
use Carbon\Carbon;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Comment extends Authenticatable
{
    use Notifiable;
    use RbacCheck;

    protected $fillable = ['content', 'is_publish', 'is_used', 'admin_id'];

    protected $rememberTokenName = '';

    protected $ability;

    public function admins(){
        $this->belongsTo('App\Admin', 'admin_id', 'id');
    }

}
