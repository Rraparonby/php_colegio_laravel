<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
use App\Lib\Estructura\Alumno\Infrastructure\Controller\AlumnoApiController;
use App\Lib\Estructura\AlumnoMateria\Infrastructure\Controller\AlumnoMateriaApiController;
use App\Lib\Financiero\Contrato\Infrastructure\Controller\ContratoApiController;
use App\Lib\Estructura\Docente\Infrastructure\Controller\DocenteApiController;
use App\Lib\Estructura\DocenteMateria\Infrastructure\Controller\DocenteMateriaApiController;
use App\Lib\Estructura\Materia\Infrastructure\Controller\MateriaApiController;
use App\Lib\Proceso\Matricula\Infrastructure\Controller\MatriculaApiController;
use App\Lib\Proceso\Nota\Infrastructure\Controller\NotaApiController;
use App\Lib\Financiero\Pension\Infrastructure\Controller\PensionApiController;
use App\Lib\Financiero\Sueldo\Infrastructure\Controller\SueldoApiController;
*/

use App\Lib\Base\Util\Constantes;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});