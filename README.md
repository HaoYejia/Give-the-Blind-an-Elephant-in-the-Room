# Give-the-Blind-an-Elephant-in-the-Room

## 技术流程设想

### 语音交互

- **计划1**：外接麦克风，麦克风传入Jetson Nano的Analog接口（可以通过GPIO定义），经Jetson Nano处理（语音识别与TTS），通过Jetson Nano的Analog接口输出扬声器

  **需要解决**：Jetson Nano与麦克风与扬声器的交互；语音识别；TTS；

- **计划2**：Jetson Nano通过UART（TX2，板子边缘的六针单排排引脚）连接Arduino，Arduino连接LD3320模块（负责语音识别，自带麦克风）与TTS模块（负责发出人声，购买时附赠扬声器）。Arduino选用MEGA2560,提供足够的IO接口。LD3320使用ISP，TTS模块使用UART，而MEGA提供3个UART与1个ISP，因此有足够的IO接口。再使用一个UART接口与Jetson Nano交互。

  如，Jetson nano发给Arduino附播报近的障碍物信息，Arduino控制TTS发出语音播报；LD3320识别到关键词后触发Arduino函数，Arduino将这一消息传给Jetson Nano处理。

  **需要解决**：Jetson Nano 与Arduino的交互（UART、Digital或Analog，其中UART稍有难度，digital只能传输二进制，Analog几乎不可能用于两个主控板的沟通）;LD3320的使用；TTS模块的使用（均有现成库，但一些不高的学习成本）

### 自动避障

- **计划1**：激光雷达，检测到一定范围内的障碍物，且其再行进方向一定范围内就强制接管底盘，停止行动，再重新规划路线
- **计划2**：在计划1的基础上，加入超声波进行辅助或替代激光雷达
- **计划3**：在计划1的基础上，加入摄像头与CV进行辅助

### 自动导航

- **计划1**：机器人小车的目前计划。首先，在需要通过的路线跑一遍建图程序，这张图将会在导航中作为机器人的地图使用；地图中标记了已知的障碍物（如墙壁等），未探索区域，与可以前进的区域。然后，在地图中设置目标点；这些目标点可以通过语音交互模块与现实地点连接。通过导航算法，机器人将自动前往目的地。

### 描述环境

- 小车搭载的USB摄像头采集图像数据，传回Jetson Nano识别出物体，并且通过TTS模块播报。该功能用于向盲人描述周围环境，在避障的同时给予盲人更多的便利。

## 功能

- [x] 一个能跑（废话）的小车
- [ ] 室内建图与导航
- [ ] 识别语音命令
- [ ] 发出语音提示
- [x] 一套摇杆输入系统
- [ ] 向盲人描述周围环境