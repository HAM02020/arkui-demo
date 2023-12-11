import worker from '@ohos.worker';

let TAG = "EXAMPLE_WORKER"

const workerPort = worker.workerPort

workerPort.onmessage = function (data) {
  console.log(`${TAG},workerPort.onMessage: ${JSON.stringify(data)}`);
  // 模拟一个耗时任务
  setTimeout(() => {
    // 耗时结束后，向宿主线程发送消息
    workerPort.postMessage("Hello, Worker, I'm sub thread");
  }, 3000);
}

workerPort.onmessageerror = (err) => {
  console.log(`${TAG},workerPort.onMessageError: ${JSON.stringify(err)}`);
}