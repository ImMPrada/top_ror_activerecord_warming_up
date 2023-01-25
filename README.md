<h1 align="center">
README
  
:construction: Project in progress :construction:
</h1>


<h3 align="left">
:pencil2: Requirements :pencil2:
</h3>

* Ruby version: 3.1.2
* Rails: 7

This project is with the aim of practice about the questions at [TOP - ActiveRecord lesson's quiz](https://www.theodinproject.com/lessons/ruby-on-rails-micro-reddit)








<img width="345" alt="image" src="https://user-images.githubusercontent.com/26731448/214150248-c44d82f0-83e5-4b66-b161-ae0e9f903ab6.png">

![image](https://user-images.githubusercontent.com/26731448/214681342-f99c3579-27df-472c-8831-3621700b0aa5.png)

![image](https://user-images.githubusercontent.com/26731448/214681603-143a2a2e-3044-4bd6-9044-a67f37e400d9.png)

Because of the relation 1:1 users:profiles, there should be the same ammount of users and profiles
![image](https://user-images.githubusercontent.com/26731448/214681706-fc6a581e-1c17-491e-8ad4-94354748da15.png)

If an User is destroyed, its corresponding Profile is destroyed:
![image](https://user-images.githubusercontent.com/26731448/214682116-6e0312ce-5954-49b8-8fbd-08f1b7e98132.png)

If a Profile is destroyed, its corresponding User is destroyed:
![image](https://user-images.githubusercontent.com/26731448/214682822-347f0762-6cd6-43c9-99ee-c23b4371c6bc.png)

state's profiles can be accesed via state.profiles, eg:
```
state = State.all.sample
state.profiles
```
![image](https://user-images.githubusercontent.com/26731448/214683380-62ca442f-18ae-4b78-bb58-cd1635f34c40.png)




