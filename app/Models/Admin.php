<?php

namespace App\Models;

use App\Models\Traits\RbacCheck;
use Carbon\Carbon;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    use Notifiable;
    use RbacCheck;

    protected $fillable = ['name', 'password', 'avatr', 'login_count', 'create_ip', 'last_login_ip', 'status', 'expire_time', 'is_used'];

    protected $rememberTokenName = '';

    protected $ability;

    protected $dates = ['expire_time'];

    protected $appends = ['ttl'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function roles()
    {
        return $this->belongsToMany(Role::class)->withTimestamps();
    }

    public function comments(){
        return $this->hasMany(Comment::class, 'admin_id', 'id');
    }
    /**
     * 判断某个路由当前登录管理员是否有权限访问
     * @param $route
     * @return bool true / false
     */
    public function hasRule($route)
    {
        /**获取当前用户的用户组*/
        if(in_array(1,$this->roles->pluck('id')->toArray()))
        {
            return true;
        }

        $rules = $this->getRules();

        return in_array($route, $rules);
    }

    public function getTtlAttribute()
    {
        $ttl = $this->getAttribute('expire_time');
        return $ttl ? Carbon::parse($ttl)->diffForHumans(Carbon::now()) : '无限期';
    }

}
