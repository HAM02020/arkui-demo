@Entry
@Component
struct CounterPage {

  build() {
    Navigation(){
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
        Text("Counter")
      }.height(150).width(350).padding(35)
    }
    .width('100%')
    .height('100%')
    .title("Counter Page")
    .titleMode(NavigationTitleMode.Mini)

  }
}