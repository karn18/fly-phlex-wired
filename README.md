# FlyPlexWired

[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg)](http://standardjs.com)

โปรเจ็คที่ถูกพัฒนาขึ้นมาเพื่อทดลองอะไรใหม่ๆ ตัวอย่าง 👉 [alpha.karn.work](https://alpha.karn.work/)

## [Phlex - https://www.phlex.fun](https://www.phlex.fun)

เป็น view component ที่ถูกพัฒนาด้วย Ruby ล้วนๆ และเค้ารับประกันว่าเร็วมากกว่า ActionView หรือ ViewComponent เสียอีก

❗️ พอได้ลองใช้จริงๆ แล้วในความรู้สึกส่วนตัวการสร้าง HTML ดูไม่เป็นธรรมชาติเหมือนใช้ **ViewComponent** ซึ่งถ้าจะให้แนะนำก็คงเลือกใช้ **ViewComponent** ดีกว่า ถึงแม้ว่ามันจะช้ากว่า **Phlex** ก็ตาม

## [TailwindCSS - https://tailwindcss.com/](https://tailwindcss.com/)

แน่นอนว่าเรายังคงไปต่อกับ TailwindCSS สำหรับการพัฒนา UI

## [Hotwired - https://hotwired.dev/](https://hotwired.dev/)

ผูกผันกันมานานจนแยกไม่ออกซะแล้ว

## [Fly.io - https://fly.io](https://fly.io)

ด้วยกระแสที่ **Heroku** จะไม่มี Free Plan อีกต่อไป ทำให้ต้องลองมองหา Free Host อื่นๆ มาลอง ซึ่งก่อนหน้านี้ก็ไม่เคยได้ลองใช้มาสักตัว

![Screen Shot 2022-09-19 at 15 19 23](https://user-images.githubusercontent.com/1924433/190976827-8bcde208-e684-4109-b94d-6dec0c99284d.png)

สำหรับ Free Plan ก็เพียงพอให้เรารัน app พร้อม database และยังมี redis อีกด้วย

  - Using **Github Action** to deploy application.
  
  ![Screen Shot 2022-09-19 at 18 02 08](https://user-images.githubusercontent.com/1924433/191003708-ad904462-ce33-4260-ad34-b41e367519a5.png)

  เวลาที่ใช้ในการ deploy ไปยัง **Fly.io** ก็ประมาณ 3 นาทีกว่า

  - Add custom domain, redirect `alpha.karn.work` to `fly-phlex-wired.fly.dev`

## [AWS Cloud Front](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html)

แม้ว่า **Fly.io** จะโฮสโปรเจ็คไว้ได้ แต่ยังติดเรื่องการ caching assets ดังนั้นจึงต้องพึ่ง **AWS Cloud Front** มาช่วย

![Screen Shot 2022-09-19 at 18 04 44](https://user-images.githubusercontent.com/1924433/191004212-ba257a6e-4fd3-465d-a5d5-73b8898f4cc5.png)

## [Rubocop](https://rubocop.org/)

## [StandardJS](https://standardjs.com/)
