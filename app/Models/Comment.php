<?php

namespace App\Models;

use App\Models\Traits\RbacCheck;
use Carbon\Carbon;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laracasts\Presenter\PresentableTrait;

class Comment extends Authenticatable
{
    use Notifiable;
    use RbacCheck;
    use PresentableTrait;

    protected $presenter = "CommentsPresenter";

    protected $fillable = ['content', 'is_publish', 'admin_id'];

    protected $rememberTokenName = '';

    protected $ability;

    public function admin(){
        return $this->belongsTo(Admin::class, 'admin_id', 'id');
    }

}
