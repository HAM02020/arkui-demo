
import worker from '@ohos.worker'

let TAG = "WORKER_MAIN_THREAD"
let URL = "entry/src/main/ets/pages/Chapter2/Async/1_Worker/ExampleWork.ets"

@Entry
@Component
struct WorkerDemo {
  private workerInstance: worker.ThreadWorker
  aboutToAppear(){
    this.workerInstance = new worker.ThreadWorker(URL,{
      name: "WORKER_THREAD"
    })
  }

  private listenMessage(){
    this.workerInstance.onmessage = (data) =>{
      console.log(`${TAG}, workerInstance.onMessage: ` + JSON.stringify(data));
    }
  }

  private  sendMessage(){
    this.workerInstance.postMessage("hello")
  }

  private destroyWorker(){
    this.workerInstance.terminate()
  }

  build(){
    Column({space: 8}) {

      Button("监听Worker的消息")
        .height(60)
        .fontSize(20)
        .onClick(() => {
          this.listenMessage();
        })

      Button("给Worker发消息")
        .height(60)
        .fontSize(20)
        .onClick(() => {
          this.sendMessage();
        })

      Button("销毁 Worker")
        .height(60)
        .fontSize(20)
        .onClick(() => {
          this.destroyWorker();
        })

    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}