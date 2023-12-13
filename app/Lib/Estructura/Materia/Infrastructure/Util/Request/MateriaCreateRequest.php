<?php declare(strict_types = 1);

namespace App\Lib\Estructura\Materia\Infrastructure\Util\Request;

use Illuminate\Http\Response;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Contracts\Validation\Validator;

class MateriaCreateRequest extends FormRequest {
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize() {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules() {
        return [
            
			'materia.created_at' => 'required' ,
			'materia.updated_at' => 'required' ,
			'materia.codigo' => 'required' ,
			'materia.nombre' => 'required' ,
			'materia.activo' => 'required' ,	
        ];
    }    

    public function failedValidation(Validator $validator) {
        
        throw new HttpResponseException(response()->json([
            'success'   => false,
            'message'   => 'Validation errors',
            'data'      => $validator->errors()
        ],Response::HTTP_BAD_REQUEST));
    }

    public function messages() {
        return [
            
			'materia.created_at' => ' created_at es Requerido' ,
			'materia.updated_at' => ' updated_at es Requerido' ,
			'materia.codigo' => ' codigo es Requerido' ,
			'materia.nombre' => ' nombre es Requerido' ,
			'materia.activo' => ' activo es Requerido' ,	
        ];
    }
}