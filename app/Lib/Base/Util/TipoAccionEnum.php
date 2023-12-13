<?php declare(strict_types = 1);

namespace App\Lib\Base\Util;

enum TipoAccionEnum {

    case SELECCIONAR;// = "SELECCIONAR";
    case NUEVO;//= "NUEVO";
    case ACTUALIZAR;//= "ACTUALIZAR";
    case ELIMINAR;//= "ELIMINAR";
    case GUARDAR_CAMBIOS;

    case BUSCAR_TODOS;// = "BUSCAR_TODOS";
    case BUSCAR;// = "BUSCAR";
}