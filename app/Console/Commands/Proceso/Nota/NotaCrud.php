<?php

namespace App\Console\Commands\Proceso\Nota;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Collection;

use App\Lib\Base\Business\Logic\Pagination;
use App\Lib\Base\Util\Constantes;
use App\Lib\Base\Util\TipoAccionEnum;

use App\Models\Proceso\Nota;
use App\Lib\Entities\Proceso\NotaReturnView;
use Database\Factories\Proceso\NotaFactory;

class NotaCrud extends Command {
	
    /* The name and signature of the console command, @var string */
    protected $signature = 'nota:crud {tipo}';

    /* The console command description, @var string */
    protected $description = 'Command description';
	
	public $tipo='I';//I,U,D
	
	public Nota $nota1;
	public Collection $notas;
	public $notaFactory;
	
	public function __construct() {
        parent::__construct();
		
		$this->notaFactory = new NotaFactory();
    }

    /* Execute the console command, @return int */
    public function handle() {
		$this->info('---------- Procesando nota:crud ----------');
		
		if($this->tipo=='I') {
			
			//INSERT
			$this->nota1 = new Nota();
			
			
			$this->nota1->created_at = date('Y-m-d H:i:s');
			$this->nota1->updated_at = date('Y-m-d H:i:s');
			$this->nota1->id_alumno = -1;
			$this->nota1->id_materia = -1;
			$this->nota1->id_docente = -1;
			$this->nota1->nota_prueba = 0.0;
			$this->nota1->nota_trabajo = 0.0;
			$this->nota1->nota_examen = 0.0;
			$this->nota1->nota_final = 0.0;						
			
			$this->nota1->save();
			
		} else if($this->tipo=='U') {
		
			//UPDATE
			$this->nota1 = new Nota();
			
			$this->nota1 = Nota::find(1);
			
			
			$this->nota1->created_at = date('Y-m-d H:i:s');
			$this->nota1->updated_at = date('Y-m-d H:i:s');
			$this->nota1->id_alumno = -1;
			$this->nota1->id_materia = -1;
			$this->nota1->id_docente = -1;
			$this->nota1->nota_prueba = 0.0;
			$this->nota1->nota_trabajo = 0.0;
			$this->nota1->nota_examen = 0.0;
			$this->nota1->nota_final = 0.0;			
			
			$this->nota1->save();
			
		} else if($this->tipo=='D') {
		
			//DELETE
			$this->nota1 = new Nota();
			
			$this->nota1 = Nota::find(1);
			
			$this->nota1->delete();
		
		} else if($this->tipo=='F') {
		
			//FACTORY
			$this->notaFactory->count(5)
									->create();
		
		}
		
		$this->info('----- Ejecutado Correctamente -----');				
		
				
    }
	
	//php artisan nota:crud I
}