class ProjectItem {
  final String name;
  final String period;
  final String role;
  final String lauguage;
  final String contribution;
  final String team;
  final String goal;
  final String description;

  ProjectItem(this.name, this.period, this.role, this.lauguage, this.contribution, this.team, this.goal, this.description);
}

class CompanyItem {
  final String key;
  final List<ProjectItem> projects;

  CompanyItem(this.key, this.projects);
}

var companyList = [
  CompanyItem(
    "everex",
    [everex_mora_fit, everex_flutter_plugin, everex_flexum, everex_android_sdk, everex_mora_vu],
  ),
  CompanyItem(
    "harex",
    [harex_ubpos, harex_javisjust, harex_cash_machine, harex_ubpay],
  ),
  CompanyItem(
    "onandoff",
    [onandoff_freeber, onandoff_san_ios, onandoff_san_android, onandoff_hanual_android],
  ),
  CompanyItem(
    "onandoff",
    [onandoff_freeber, onandoff_san_ios, onandoff_san_android, onandoff_hanual_android],
  ),
  CompanyItem(
    "sinsung",
    [sinsung_cash],
  ),
  CompanyItem(
    "goeun",
    [goeun_yangpa, goeun_ushome],
  ),
];

var everex_mora_fit = ProjectItem(
  "Mora Fit 안드로이드 앱 개발",
  "2025.02 - ",
  "신규 앱 개발",
  "Kotlin, Compose",
  "100%",
  "PM(신입) 1명, 디자이너(부분 참여) 1명, 백엔드 1명",
  "- 박람회 시연용 AI 체형 분석 MVP 개발\n- 회원 및 하위 회원 관리 기능 포함한 플랫폼화\n- 결과 공유 및 결제 연동 준비",
  "- Jetpack Compose를 이용한 MVVM 기반 뷰 구축\n- CameraX 와 AI 모델을 활용한 실시간 관절 각도 측정 구현 (20여 개 지표)\n- 분석 결과 시각화 및 카카오톡/이메일 공유 기능 구현\n- JWT Token 기반 회원 시스템 구축\n- 구글 인앱 결제 연동 (Google In-App Billing 기반)\n- 디자이너 공백 시 UI 직접 설계, 기획 보완 및 우선순위 조정 주도\n- 1개월 내 MVP 기능까지 완성, 박람회 현장에서 60개 이상 기업의 피드백 수집, 시연 성공률 100% 달성\n- 2개월 내 플랫폼 기능을 완성하여 구글 플레이 스토어 배포, 3일만에 첫 고객 확보"
);

var everex_flutter_plugin = ProjectItem(
    "Flutter 체형 분석 플러그인 개발",
    "2025.01 - 2025.05",
    "사내 전용 Flutter 플러그인 개발",
    "Flutter",
    "50%",
    "iOS 앱 개발자 1명",
    "- 기존에 구축된 Android AAR 모듈을 Flutter에서 사용할 수 있도록 래핑\n- Flutter 환경에서도 카메라 연동, AI 분석 결과 수신이 가능하도록 구현",
    "- AAR 모듈을 Flutter Android에 통합하여 기존 Android 기반 체형 분석 SDK를 그대로 활용\n- Flutter에서 Android의 CameraView를 표시하기 위해 PlatformView 사용\n- AAR 내부에서 분석된 결과를 이벤트 리스너(EventChannel) 를 통해 Flutter로 전달"
);

var everex_flexum = ProjectItem(
    "Flexum 키오스크형 동작분석 기기 개발",
    "2024.11 - 2025.01",
    "Android OS 기반 키오스크 개발(기획 포함)",
    "Kotlin, XML",
    "100%",
    "디자이너 1명, 백엔드 1명",
    "- KMI 광화문점에 설치될 AI 체형 분석용 키오스크 개발 & 설치\n- 카카오톡을 이용한 결과 공유",
    "- 안드로이드 OS 기반 셋톱박스를 활용한 키오스크 앱 개발\n- MVVM 아키텍처 + XML View 기반 UI 구성\n- Jetpack CameraX + AI 모델 연동으로 동작 분석 기능 구현 (정적 자세, ROM 촬영 포함)\n- Custom Canvas 활용: 분석 결과를 동적으로 시각화하여 결과지 출력\n- 카카오톡 알림톡 연동: 결과지를 사용자에게 자동 발송 (백엔드 협업)"
);

var everex_android_sdk = ProjectItem(
    "AI Camera SDK 개발, 배포",
    "2024.09 - 2025.01",
    "모듈 개발",
    "Kotlin, Compose",
    "100%",
    "디자이너 1명, 백엔드 1명",
    "- AI 체형 분석 기능을 포함한 Android용 AAR 모듈 개발\n- GitHub Maven Repository 기반 B2B 배포 시스템 구축",
    "- AI 모델 기반 동작 분석 SDK 개발(관절 추정 기반 자세 측정 기능 포함)\n- 재사용 가능한 AAR 패키지 형태로 빌드\n- Maven Publish Plugin을 사용하여 GitHub Maven Repository에 업로드, 외부 기업 사용 가능하게 배포"
);

var everex_mora_vu = ProjectItem(
    "Mora Vu Flutter App 유지보수",
    "2024.07 - 2025.02",
    "앱 유지보수",
    "Flutter",
    "50%",
    "웹 프론트엔드 1명, 백엔드 1명",
    "- 간헐적으로 존재하던 네트워크 에러 관련 버그 수정\n- 간헐적으로 카메라가 느려지고, 멈추는 현상에 대한 버그 수정",
    "- Flutter Camera App의 Camera Analysis 멈춤 현상 옵저빙\n- Mora Vu 앱의 네트워크 이슈 시 에러 핸들링 추가"
);

var harex_ubpos = ProjectItem(
    "UBPos 앱 유지보수, 신규 기능 개발",
    "2024.02 - 2024.05",
    "유지보수, 신규 기능 개발",
    "Kotlin, XML",
    "70%",
    "안드로이드 1명",
    "- 신규 결제 플랫폼 도입에 따른 소상공인 모바일 포스 기능 추가",
    "- POPUP을 통한 결제정보 상세 뷰 구현\n- 채팅 솔루션을 이용한 네이티브 기반의 채팅 기능 추가\n- 기 개발 된 앱의 오류 수정, 성능 개선 리팩터링\n- Retrofit2를 통한 API 서버통신"
);

var harex_javisjust = ProjectItem(
    "Jarvisjust 안드로이드 앱개발",
    "2024.02 - 2024.05",
    "신규 앱 개발",
    "Kotlin, XML",
    "30%",
    "안드로이드 1명",
    "- 신규 결제 플랫폼 도입",
    "- 커스텀 뷰를 이용한 네이티브 뷰 구현\n- 채팅 솔루션을 이용한 네이티브 기반의 채팅 기능 추가\n- 앱 - 웹 간의 콜백 인터페이스 연동\n- coroutine을 이용한 비동기 프로그래밍 방식으로의 개발"
);

var harex_cash_machine = ProjectItem(
    "Orangi pi를 이용한 캐시머신 개발",
    "2024.02 - 2024.05",
    "Android OS 임베디드를 활용한 캐시머신 개발",
    "Kotlin",
    "100%",
    "백엔드 1명",
    "- 아프리카 지역 ATM 기기를 대신할 캐시머신 개발",
    "- 안드로이드 abs 를 이용한 싱글보드 컴퓨터에 안드로이드 apk 탑재\n- 블루투스를 이용한 싱글보드 컴퓨터 - 안드로이드와 ios 기기 간의 통신 연동\n- 싱글보드 컴퓨터 - 아두이노 간의 시리얼 통신 연동"
);

var harex_ubpay = ProjectItem(
    "안드로이드 Ubpay 웹- 앱 연동 인터페이스 유지보수",
    "2023.12 - 2024.05",
    "앱 유지보수, 고도화",
    "Kotlin",
    "30%",
    "안드로이드 개발자 1명",
    "- 기존 존재하던 오픈뱅킹 앱의 유지보수, 고도화",
    "- Java -> Kotlin 언어변경 지원\n- 웹 - 앱 간 인터페이스 추가연동\n- MVC 패턴 -> MVVM 패턴으로의 디자인 패턴 변경"
);

var onandoff_freeber = ProjectItem(
    "Freeber 프로토타입 안드로이드, iOS 개발",
    "2022.11 - 2023.11",
    "신규 앱 개발",
    "Kotlin, XML, Swift, Storyboard",
    "100%",
    "백엔드 1명",
    "- 스트리밍 사이트 전체 개발",
    "- OKHttp3와 Coroutine을 활용해 안정적인 비동기 서버 연동 처리\n- RTMP Protocol + ExoPlayer 기반으로 라이브 방송 시청 기능 구현\n- 다중 소켓 연결을 통한 실시간 채팅 기능 구현\n- 오픈소스를 활용한 RTMP 기반 방송 송출 기능 개발\n- Custom PIP(Picture-in-Picture) 기능 개발\n- 사다리꼴, Arc 형태의 특수 뷰 애니메이션을 직접 구현하여 시각적 몰입감 강화 (Android 전용)"
);

var onandoff_san_ios = ProjectItem(
    "산티비 iOS 개발",
    "2022.05 - 2023.08",
    "신규 앱 개발",
    "Swift, Storyboard",
    "100%",
    "백엔드 1명",
    "- 산TV iOS 앱 전체 개발",
    "- AlamoFire을 이용한 php기반 서버와의 REST API 연동\n- RTMP Protocol 기반의 웹과 native iOS와의 연동을 통한 방송 시청기능"
);

var onandoff_san_android = ProjectItem(
    "산TV 안드로이드 유지보수, 신규기능 개발",
    "2022.05 - 2023.09",
    "유지보수, 신규 기능 개발",
    "Java, XML",
    "100%",
    "백엔드 1명",
    "- 산TV Android 유지보수\n- 구글 결제 연동",
    "- 구글 인앱결제 추가\n- 구글 비정상 종료 보고서를 바탕으로 장애 파악 후 기개발된 앱의 유지보수\n- PIP(Picture-in-Picture) 기능 개발\n- RTMP Protocol 기반의 웹 연동을 통한 방송시청 기능 개발\n- 태블릿 PC 환경에서의 뷰 최적화\n- 오픈소스를 이용한 RTMP Protocol기반의 방송송출 기능 개발"
);

var onandoff_hanual_android = ProjectItem(
    "하늘티비 안드로이드 앱 유지보수",
    "2022.05 - 2023.09",
    "유지보수, 신규 기능 개발",
    "Java, XML",
    "100%",
    "백엔드 1명",
    "- 구글 결제 연동",
    "- 구글 인앱결제 추가"
);

var sinsung_cash = ProjectItem(
    "김포 지역화폐 API 개발 담당",
    "2022.02 - 2022.05",
    "유지보수, 신규 기능 개발",
    "Java",
    "30%",
    "백엔드 2명",
    "- 김포 내 지역화폐를 QR코드로 결제 가능하도록 기능 추가",
    "- 편의점 CPM 기반 QR 결제 API 전체 구현\n- 오픈뱅킹 관련 취소 프로세스 개발"
);


var goeun_yangpa = ProjectItem(
    "양파마켓(B2C 음식 앱) 개발",
    "2020.09 - 2022.01",
    "신규 앱 개발",
    "Kotlin",
    "100%",
    "기획자 1명, 백엔드 1명",
    "- 지역 내 마감할인 상품 판매 앱 개발",
    "- 앱 전체 기획\n- OKHttp3를 통한 서버통신 구현\n- 안드로이드 부분 전체 개발(지도, 백그라운드 서비스, Notification, 3자 결제)"
);

var goeun_ushome = ProjectItem(
    "어스홈(인테리어용 B2C 앱, 3D 모델링) 개발",
    "2020.09 - 2022.05",
    "앱 기능 추가 개발",
    "Java",
    "50%",
    "안드로이드 1명",
    "- B2C 기반의 인테리어 상품 판매, 3D 도면 모델링 앱 개발",
    "- OKHttp3를 통한 서버통신 구현\n- 커뮤니티 덧글 기능 구현\n- 포인트샵 기획, 기능 전체 구현\n- 인테리어 3D, 도면 데모 버전 구현(ARCore)"
);