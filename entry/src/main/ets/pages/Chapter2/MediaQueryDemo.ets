import mediaQuery from '@ohos.mediaquery';
@Entry
@Component
struct MediaQueryDemo {

  private mediaListener: mediaQuery.MediaQueryListener;

  @State color: string = '#DB7093';
  @State text: string = 'Portrait';
  @State fontSize: number = 50;

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
      Text(this.text)
        .fontSize(this.fontSize)
        .fontColor(this.color)
    }
    .width('100%')
    .height('100%')
  }

  private mediaOrientationChanged(result: mediaQuery.MediaQueryResult) {
    if(result) {
      if(result.matches) {
        // 满足条件，实现相应业务逻辑
        this.color = '#FFD700'
        this.text = 'Landscape'
      } else {
        // 不满足条件，实现相应业务逻辑
        this.color = '#DB7093'
        this.text = 'Portrait'
      }
    }
  }

  aboutToAppear() {
    // 获取监听器
    this.mediaListener = mediaQuery.matchMediaSync("(orientation: landscape)");
    // 开始监听
    this.mediaListener.on("change", this.mediaOrientationChanged);

  }

  aboutToDisappear() {
    // 取消监听
    this.mediaListener.off("change", this.mediaOrientationChanged);
  }

}