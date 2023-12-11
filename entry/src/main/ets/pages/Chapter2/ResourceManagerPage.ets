import resourceManager from '@ohos.resourceManager'
@Entry
@Component
struct ResourceManagerPage {
  @State capability:string = "";
  @State configuration:string = "";
  private resManager: resourceManager.ResourceManager;

  aboutToAppear(){
    this.resManager = getContext(this).resourceManager
    this.resManager.getDeviceCapability((err,data)=>{
      if (data){
        this.capability = JSON.stringify(data)
      }

    })
    this.resManager.getConfiguration((err,data)=>{
      if (data){
        this.configuration = JSON.stringify(data)
      }

    })
  }

  aboutToDisappear(){
    this.resManager.release()
  }

  build(){
    Flex({direction: FlexDirection.Column}){
      Text(`capability: ${this.capability}`)
      Text(`configuration: ${this.configuration}`)
    }
    .width('100%')
    .height('100%')
  }
}