#retain 和copy的区别 

原来简单解释过属性定义（Property） ，并且提起了简单的retain，copy，assign的区别。那究竟是有什么区别呢？
 
1. assign 就不用说了，因为基本上是为简单数据类型准备的，而不是NS对象们。 
2. copy 建立一个索引计数为1的对象，然后释放旧对象 
3. retain 释放旧的对象，将旧对象的值赋予输入对象，再提高输入对象的索引计数为1 

那上面的是什么该死的意思呢？ 

Copy其实是建立了一个相同的对象，而retain不是： 
比如一个NSString对象，地址为0×1111，内容为@"STR"，Copy到另外一个NSString之后，地址为0×2222，内容相同，新的对象retain为1，旧有对象没有变化；retain到另外一个NSString之后，地址相同（建立一个指针，指针拷贝），内容当然相同，这个对象的retain值+1 

#结论
也就是说，retain是指针拷贝，copy是内容拷贝。哇，比想象的简单多了… 