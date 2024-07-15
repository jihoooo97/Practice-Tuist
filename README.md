![Swift 5.10](https://img.shields.io/badge/Swift-5.10-F05138.svg?style=flat&color=F05138) 
![Xcode 15.3](https://img.shields.io/badge/Xcode-15.3-147EFB.svg?style=flat&color=147EFB)
![iOS 15.0+](https://img.shields.io/badge/iOS-15.0+-147EFB.svg?style=flat&color=00E007)
![Tuist 4.18](https://img.shields.io/badge/Tuist-4.18-147EFB.svg?style=flat&color=6E12CB)

# Tuist Practice
Tuist로 프로젝트 생성 및 모듈화 연습용 저장소입니다.

<br>

## 프로젝트 빌드

1. mise를 통해 Tuist를 설치한 상태여야합니다. [Tuist 설치 방법](https://docs.tuist.io/guide/introduction/installation.html)
2. git clone
3. 프로젝트 경로에서 tuist install
4. tuist generate

<br>

## 모듈 구조

![graph](https://github.com/jihoooo97/Practice-Tuist/blob/main/graph.png)

- **Practice-Tuist**  
App 모듈
- **RootFeature**  
Feature 모듈의 Root Feature
- **FeatureA**  
첫번째 탭에 보여질 Feature 모듈
- **FeatureB**  
두번째 탭에 보여질 Feature 모듈
- **FeatureC**  
세번째 탭에 보여질 Feature 모듈
- **FeatureDependency**  
Feature 모듈들의 공통 의존성 모듈
- **Data**  
서버와 or 로컬 DB와 직접적인 통신을 하는 코드를 모은 모듈
- **Domain**  
앱의 비즈니스 로직 코드를 모은 모듈
- **UIComponent**  
앱 전반으로 쓰일 UI코드를 모은 모듈
- **Core**  
앱 전반으로 쓰일 코드를 모은 모듈

<br>

## 배운 점

1. Tuist로 프로젝트 생성하는 방법
2. Tuist로 모듈화하는 방법
3. tuist scaffold로 Template 생성 및 적용하는 방법

<br><br>
