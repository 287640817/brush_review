<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class AddCommentsRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'content' => 'required',
            'is_publish' => 'required:integer',
        ];
    }

    public function message(){
          return [
              'content.required' => '请填写评论内容',
              'is_publish.required' => '发布状态不能为空',
              'is_publish.integer' => '发布状态值不合法',
          ];
    }
}
