import router from '@ohos.router'
import resourceManager from '@ohos.resourceManager';
@Entry
@Component
struct Index {
  @State active: boolean = false
  @State text: object = {name: 'news'}

  aboutToAppear(){


  }

  aboutToDisappear(){

  }

  build() {

    Navigation(){
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {

        Text('Go to ' + this.text['name'] + ' page')
          .width('100%').textAlign(TextAlign.Center)
        .onClick(()=>{
          router.pushUrl({url: 'pages/Counter'})
        })
        // 传参数到Detail页面

        Navigator() {
          Text('Back to previous page').width('100%').textAlign(TextAlign.Center)
        }.active(this.active)
        .onClick(() => {
          this.active = true
        })
      }.height(150).width(350).padding(35)
    }
    .toolBar()
    .height('100%')
    .width('100%')
    .title('Index')

  }
}