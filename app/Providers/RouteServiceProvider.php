<?php

namespace App\Providers;

use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * The path to the "home" route for your application.
     *
     * Typically, users are redirected here after authentication.
     *
     * @var string
     */
    public const HOME = '/home';

    /**
     * Define your route model bindings, pattern filters, and other route configuration.
     *
     * @return void
     */
    public function boot()
    {
        $this->configureRateLimiting();

        $this->routes(function () {
            Route::middleware('api')
                ->prefix('api')
                ->group(base_path('routes/api.php'));

            Route::middleware('web')
                ->group(base_path('routes/web.php'));

            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Estructura/Alumno/Infrastructure/Route/AlumnoRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Estructura/AlumnoMateria/Infrastructure/Route/AlumnoMateriaRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Financiero/Contrato/Infrastructure/Route/ContratoRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Estructura/Docente/Infrastructure/Route/DocenteRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Estructura/DocenteMateria/Infrastructure/Route/DocenteMateriaRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Estructura/Materia/Infrastructure/Route/MateriaRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Proceso/Matricula/Infrastructure/Route/MatriculaRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Proceso/Nota/Infrastructure/Route/NotaRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Financiero/Pension/Infrastructure/Route/PensionRoute.php'));
            Route::middleware('api')->prefix('api')->group(base_path('app/Lib/Financiero/Sueldo/Infrastructure/Route/SueldoRoute.php'));

        });
    }

    /**
     * Configure the rate limiters for the application.
     *
     * @return void
     */
    protected function configureRateLimiting()
    {
        RateLimiter::for('api', function (Request $request) {
            return Limit::perMinute(60)->by($request->user()?->id ?: $request->ip());
        });
    }
}
