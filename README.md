# Keyword_Notification(2021.01 - 2021.03)
> 2021 KEY Team Project

## π‘ ν μκ°

μλνμΈμ! ν KEYμλλ€.

- [κΉμΉμ](https://github.com/julie0005)
: nodejs api κ΅¬ν
- [κΉμμ](https://github.com/yeye921)
: react-native λ‘κ·ΈμΈ, ν€μλμΆκ° νλ©΄ λ° μλ¦Ό κΈ°λ₯ κ΅¬ν
- [λ°μ€μ ](https://github.com/pyj127)
: database μ€ν€λ§ κ΅¬μ±, ν¬λ‘€λ§
- [μ°λ€ν](https://github.com/defwdahyun0)
: react-native νμκ°μ, μμ΄λ/λΉλ°λ²νΈ μ°ΎκΈ°, λ©μΈ, μ€μ  νλ©΄ κ΅¬ν
- [νλλ―Ό](https://github.com/handevmin)
: nodejs api κ΅¬ν, firebase νΈμ μλ¦Ό κΈ°λ₯ κ΅¬ν

## π **μλΉμ€ μκ°**

<br/>

νκ΅ κ³΅μ§μ¬ν­μμ νλ‘κ·Έλ¨μ μ μ²­νλ €κ³  λ΄€λλ, μ μ²­κΈ°νμ΄ μ§λ μ μ΄ μμΌμ κ°μ?

νκ΅ ννμ΄μ§, νκ³Ό ννμ΄μ§λ₯Ό λμλ€λλ©° κ³΅μ§μ¬ν­μ νμΈνκΈ° νλμ κ°μ?

λ§€μΌ κ³΅μ§μ¬ν­μ νμΈνκΈ° μ΄λ €μ°μ κ°μ?

μ΄μ  `μμ£Όν€μλ`μμ μνλ μ λ³΄ μλ¦Όμ λ°μλ³΄μΈμ!

<br/>

- νμκ°μ/λ‘κ·ΈμΈμ νκ³ ,
- ν€μλλ₯Ό μΆκ°ν΄λ³΄μΈμ.
- μλ¦Όμ λ°μλ³Ό μ μμ΅λλ€!
- λμκ² λ± λ§λ μλ¦Όμ ν€μλλ₯Ό μ€μ νκ³ , λͺ¨μμ μλ¦Όμ λ°μλ³΄μΈμ!

<br/>

## 1. Technology used
 
<br/>

**BackEnd** `Node.js` `Amazon EC2` `ExpressJS`

**Database** `MySQL` `MySQLWorkBench`

**crawling** `Python`

**Server** `AWS EC2` `Firebase`

**FrontEnd** `ReactNative`

**Version Control** `Git`

**Repository** `Github`

**Tools** `Visual Studio Code` `Notion` `Microsoft 365`

<br/>

## 2. Directory description
### 2.1 api
    - AWS EC2 μλ² κ΅¬μ‘°
[README](https://github.com/julie0005/Keyword_Notification/blob/master/api/README.md)

### 2.2 app-front
    - μ± μ»΄ν¬λνΈ λ° UI, κΈ°λ₯ μ μ
[README](https://github.com/julie0005/Keyword_Notification/blob/master/app-front/README.md)

### 2.3 db
     - μΉ ν¬λ‘€λ§ λ° λ°μ΄ν°λ² μ΄μ€ κ΄λ¦¬
[README](https://github.com/julie0005/Keyword_Notification/blob/master/db/README.md)

### 2.4 meeting_note
    - νμλ‘, notionμΌλ‘ κΈ°λ‘ ν μ?κΉ

<br/>

## 3. Development result

#### λ‘κ·ΈμΈ νλ©΄
<img src="./images/signin.jpeg" width="286" height="530"/>

#### μμ΄λ μ°ΎκΈ°, λΉλ°λ²νΈ μ°ΎκΈ° νλ©΄
<img src="./images/findid.jpeg" width="286" height="530"/><img src="./images/findpw.jpeg" width="286" height="530"/>

#### νμκ°μ νλ©΄
<img src="./images/signup.jpeg" width="286" height="530"/>

#### λ©μΈ νλ©΄
<img src="./images/notice_all.jpeg" width="280" height="530"/><img src="./images/notice_personal.jpeg" width="280" height="530"/>

#### ν€μλ μΆκ° νλ©΄
<img src="./images/add.jpeg" width="280" height="530"/>

#### μ€μ  νλ©΄
<img src="./images/settings.jpeg" width="280" height="530"/>

<img src="./images/account.jpeg" width="186" height="353"/><img src="./images/emailchange.jpeg" width="186" height="353"/><img src="./images/pwchange.jpeg" width="186" height="353"/>

<img src="./images/logout.jpeg" width="186" height="353"/><img src="./images/quit.jpeg" width="186" height="353"/>

<img src="./images/alarmcycle.jpeg" width="186" height="353"/><img src="./images/condition.jpeg" width="186" height="353"/><img src="./images/personal.jpeg" width="186" height="353"/><img src="./images/contact.jpeg" width="186" height="353"/>

<br/>

## 4. Structure

![μμ€ν κ΅¬μ‘°λ](./images/structure.png)

### λμ κ΅¬μ‘°

#### Python

1. μ£ΌκΈ°μ μΈ ν¬λ‘€λ§μ νμ¬ crawlμ μ΅μ  5κ° κ²μλ¬Ό μ μ₯
2. μ μ₯ μ  κ·Έ νμ΄λΈμ μ΄μ  5κ° κ²μλ¬Όκ³Ό λ΄μ©μ΄ λ€λ₯΄λ©΄ μλ‘μ΄ κ²μλ¬Όλ‘ νλ¨νκ³  μ μ₯
3. A νμ΄μ§μ μλ‘μ΄ κ²μλ¬Όλ€μ μ λͺ©μ λν΄μ A νμ΄μ§μ ν΄λΉνλ μ¬μ©μλ€μ΄ λ±λ‘ν ν€μλ(λ‘μ»¬ λλΉ μ΄μ©)κ° μλμ§ νλ¨
4. μλ€λ©΄ (νμ΄μ§, ν€μλ)λ₯Ό μ£Όμ λ‘ κ΅¬λν μ¬μ©μλ€μκ² νΈμμλ¦Όμ λ³΄λ΄λΌκ³  firebaseμ μμ²­
5. firebaseλ (νμ΄μ§, ν€μλ)κ° μ£Όμ μΈ μ¬μ©μλ€μκ² fcm(firebase-cloud-mesasging) μν.

#### Node

1. νλ‘ νΈμ APIμ λν΄ κ° κΈ°λ₯ μν [API λ¬Έμ μ°Έμ‘°](https://github.com/julie0005/Keyword_Notification/blob/master/api/README.md)

#### React-Native

1. μ¬μ©μκ° νμ΄μ§ μ§μ  ν ν€μλ λ±λ‘μ νλ©΄, (νμ΄μ§, ν€μλ)λ₯Ό μ£Όμ λ‘ firebaseμ κ΅¬λν¨.
2. μ¬μ©μκ° ν€μλ μ­μ  μ firebaseμμ μ¬μ©μ ν ν°μ μ΄μ©νμ¬ μ­μ .
3. (νμ΄μ§, ν€μλ) μ£Όμ λ₯Ό κ΅¬λν μ¬μ©μκ° μκ² λλ©΄ ν΄λΉ μ£Όμ  μ­μ .

## 5. How to process

### 5.1. Running front-end

``` bash
# go to directory
$ cd app-front

# install dependencies
$ npm install # Or yarn install

# build for production and launch server
$ cd android
$ gradlew build

# generate and start project
$ npx react-native start
$ npx react-native run-android

```
### 5.2. Running back-end

``` bash
# go to directory
$ cd api/app

# install node and npm (in ubuntu)
$ sudo apt-get update 
$ sudo apt-get install nodejs
$ sudo apt-get install npm
$ npm init --yes
$ npm install

# start node server with exit state(background)    
$ nohup npm start &
$ exit

# start node server with auto_modifying state(Daemon process)
$ nohup nodemon </dev/null &
$ exit
```
## 6. contact
    e-mail: keywordalarmi@gmail.com
