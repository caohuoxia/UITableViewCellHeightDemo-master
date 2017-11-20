# UITableViewCellHeightDemo
UITableView自动计算高度并缓存

讲解详见[这篇文章](http://www.jianshu.com/p/64f0e1557562)

***
以上为网友分享！非常感谢！
下面是我这边更新的一些知识点：

1. 解决了uiimageview加载图片 使整个cell高度拉大的问题\
content hugging 和 compressive resistance的优先级都设置成250，也就是低优先级\
让imageview的高度 去适应右边文字内容高度来

2.类似玖富我的卡券cell收缩展开效果：默认收缩，点击展开，再一次点击的话 又收缩（使用block告诉vc让tableview更新内容和高度）

3.更新UI都的在主线程中操作，否则无效

4.根据model手动计算cell高度

5.autolayout 方法动态计算cell高度（约束要保证从左到右从上到下确定约束的原则）

