<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ApiRequestRequest extends FormRequest
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
        $apiRequest = $this->route('apiRequest');
        return [
            'name' => 'required|unique:api_requests'.($apiRequest ? ",name,{$apiRequest->id}" : ""),
            'url' => 'required',
            'header' => 'required',
            'type' => Rule::in(['get', 'post']),
        ];
    }
}
