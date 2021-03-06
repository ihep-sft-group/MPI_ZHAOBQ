import sys,os
sys.path.append(os.environ['DistJETPATH_Server'])
from python.IScheduler import SimpleTaskScheduler
import AnaApp
#export DistJETPATH=/root/mpi/server
def run(app_config_path):
    app = AnaApp.AnaApp("/root/mpi/Application/AnalysisApp","AnalysisApp",config_path=app_config_path)
    app.set_resdir("/root/mpi/ProdTest/res")
    app.set_scheduler(SimpleTaskScheduler)
    return [app]
