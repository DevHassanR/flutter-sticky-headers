
## 1. Research: Sticky header flutter 

- Keywords: 
  - flutter scrollview with fixed header
  - Sticky header ListView flutter
  - sticky headers flutter
  - Custom sticky header flutter
  - flutter sticky header example
  - flutter sticky container
  - sticky widget in flutter
  - flutter collapse header
  - flutter sticky header github
  - flutter scrollview with fixed header
  - flutter table sticky header
  - flutter listview sticky header
  - sliver sticky header flutter
  - sticky appbar flutter
  - sticky grouped listview flutter
  - flutter sticky container

- Video Title: Flutter tutorial - How to add sticky headers and the snap to item effect in flutter


## 2. Research: Competitors

**Flutter Videos/Articles**
- 12K: https://www.youtube.com/watch?v=QVxd0K_74Pc
- 15K: https://www.youtube.com/watch?v=YuW-4OXy6SE
- 24K: https://www.youtube.com/watch?v=vDgdzfcFBy0
- 4.6K: https://www.youtube.com/watch?v=ndYxhCE5bMk
- 3.5K: https://www.youtube.com/watch?v=u64MXByVEwM
- https://stackoverflow.com/questions/48606995/flutter-implement-sticky-headers-and-the-snap-to-item-effect
- https://flutteragency.com/how-to-implement-sticky-header-in-flutter/
- https://www.getwidget.dev/blog/flutter-sticky-header/
- https://codingwithdhrumil.com/2021/10/sticky-header-flutter-example.html
- https://morioh.com/p/e16cb8811951

**Android/Swift/React Videos**

- 16K: https://www.youtube.com/watch?v=eqACQQfgq38
- 8K: https://www.youtube.com/watch?v=qZR_1i00EPg
- 8.8K: https://www.youtube.com/watch?v=-ka6VMuae0g
- 6.8K: https://www.youtube.com/watch?v=2VLDhoc2JgA
- 5.9K: https://www.youtube.com/watch?v=hmifqxD7seI
- 47K: https://www.youtube.com/watch?v=xutPT1oZL2M
- 29K: https://www.youtube.com/watch?v=mvxgWuxwnik
- 52K: https://www.youtube.com/watch?v=pNw8lPdD4H4

**Great Features** 
- This has 3 types of differnt animations which is added in the app
- 

**Problems from Videos** 
- What is the way to use Streambuilder with sliverList and with customscrollview   
- Why it is hard to use stream builder inside customscrollview?
- what to use if we want to open container inside the expansion list?
- SliverPersistentHeader rebuilds itself and its delegate all the time to allow animations to work. That means you request that image from network many times a second. Any way to avoid that?



**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/62184121/how-to-group-list-items-under-sticky-headers-in-flutter
- https://stackoverflow.com/questions/64905471/flutter-group-date-wise-and-show-under-a-sticky-header
- https://stackoverflow.com/questions/66542479/listview-in-flutter-with-sticky-side-headers
- https://stackoverflow.com/questions/65302199/how-to-scroll-stacked-containers-with-sticky-header-in-flutter

## 3. Video Structure

**Main Points / Purpose Of Lesson**

- To make header scollable or collapsible with three differnt kind of animations

**The Structured Main Content**
1. Add the sticky_headers library in your project by going to pubspecp.yaml file after dependencies. 
                        - Run flutter pub get command in your terminal or click on the pub get button on the top right if you are using android studio
                        - Now you need to import this library in your screen by adding import 'package:sticky_headers/sticky_headers.dart';
                    

2. You should have header and content two widgets created then you can add widget StickyHeader() and inside it you can use parameter header and assign it a header widget that you have already craeted same we have to do with the content parameter by giving it content for the header
```
  StickyHeader(
        header: HeaderWidget(),
        content: ContentWidget(),
      )
```

3. And if you want add sticky headers inside lisview builder then you can add it in the itembuilder of your listview builder as shown and now it will show sticky headers for your complete list.

```
itemBuilder: (context, index) => StickyHeader(
        header: HeaderWidget(),
        content: ContentWidget(),
      )
```
4. If you want to use animated headers with content then you need to use StickyHeaderBuilder. This same as [StickyHeader] but instead of supplying a Header view, you supply a [builder] that constructs the header with the appropriate stickyness as shown.

```
StickyHeaderBuilder(
        builder: (BuildContext context, double stuckAmount) {
          stuckAmount = 1.0 - stuckAmount.clamp(0.0, 1.0);
          return HeaderWidget();
        },
        content: ContentWidget(),
```
- The builder returns the "stuckAmount" which will start firing when the header reaches the sticking point. The value goes from 1 to -1, 1 being at the bottom of the sticking point, -1 being above the sticking point. We can use that value to create some cool effects.

4. Same if you want ti use it inside a lisview builder then use StickyHeaderBuilder ain your itemBuilder as shown.

```
itemBuilder: (context, index) => StickyHeaderBuilder(
        builder: (BuildContext context, double stuckAmount) {
          stuckAmount = 1.0 - stuckAmount.clamp(0.0, 1.0);
          return HeaderWidget();
        },
        content: ContentWidget(),
      )
```
5. You can also use one of it's property called overlapHeaders. If you set it to true then the header will overlap the as shown.

```
itemBuilder: (context, index) => StickyHeaderBuilder(
        overlapHeaders: true,
        builder: (BuildContext context, double stuckAmount) {
          stuckAmount = 1.0 - stuckAmount.clamp(0.0, 1.0);
          return HeaderWidget();
        },
        content: ContentWidget(),
      )
```
