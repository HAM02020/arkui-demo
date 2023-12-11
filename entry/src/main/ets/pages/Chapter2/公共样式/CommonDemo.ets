
// 尺寸设置

@Component
struct CommonSize {
  build() {
    Column() {
      Text()
        .size({ width: 220, height: 125 }) // 设置宽高
        .width(120) // 设置宽度，覆盖前边的值
        .height(25) // 设置高度，覆盖前边的值
        .backgroundColor("#ccbbaa") // 设置背景色

      Text()
        .width("100%") // 设置宽度充满父布局
        .height(10) // 设置高度
        .backgroundColor(Color.Pink) // 设置背景色

      Text()
        .width(200) // 设置宽度
        .height(200) // 设置高度
        .size({ width: 120, height: 25 }) // 设置宽高，覆盖前边的值
        .backgroundColor("#aabbcc") // 设置背景色

      Text()
        .width(50)
        .backgroundColor(Color.Pink)
        .aspectRatio(1.5)            // 设置宽高比
    }
    .size({ width: '100%', height: '100%' })
  }
}

// 位置设置

@Component
struct CommonPos {
  build() {
    Column() {

    }
    .size({ width: '100%', height: '100%' })
  }
}
