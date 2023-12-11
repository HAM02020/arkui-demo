import taskPool from '@ohos.taskpool'

@Entry
@Component
struct TaskPoolDemo {
  private backgroundTask: taskPool.Task;

  private initBackgroundTask() {
    this.backgroundTask = new taskPool.Task(this.doSomething)
  }

  private doSomething() {
    console.log("background Task:")
  }

  private exec(){
    taskPool.execute(this.backgroundTask)
  }

  aboutToAppear() {
    this.initBackgroundTask()
  }

  build() {
    Column() {
      Button() {
        Row(){
          Image($r('app.media.icon'))
            .size({width: 50})
          Text("开启TaskPool线程")
        }
      }.onClick(()=>{
        this.exec()
      })
    }
    .size({ width: '100%', height: '100%' })
  }
}