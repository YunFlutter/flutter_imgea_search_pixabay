# Flutter Image Search — Pixabay

Pixabay API에서 사진을 불러오고 키워드로 검색하는 Flutter 이미지 검색 앱입니다. API 응답을 화면에 직접 전달하지 않고 DTO, Mapper, 도메인 모델, Repository 계층으로 분리했습니다.

## 주요 기능

- 앱 시작 시 Pixabay 사진 목록 조회
- 검색어 기반 이미지 검색
- 이미지 목록 표시
- 선택한 이미지의 상세 화면 이동
- 로딩·성공·오류 상태 관리

## 기술 스택

- Flutter / Dart
- Pixabay API
- `http`
- ChangeNotifier
- Freezed / JSON Serializable

## 구조

```text
lib/
├── core/result/         # 성공·실패 결과 타입
├── data/
│   ├── data_source/     # Pixabay API 요청
│   ├── dto/             # API 응답 DTO
│   ├── mapper/          # DTO → 도메인 모델 변환
│   └── repository/      # Repository 구현
├── domin/               # 도메인 모델과 Repository 인터페이스
└── view/                # 검색·상세 화면과 ViewModel
```

`domin` 폴더명은 현재 저장소 구조를 그대로 표기했습니다.

## 실행 준비

1. [Pixabay API](https://pixabay.com/api/docs/)에서 API 키를 발급합니다.
2. 아래 파일을 생성합니다.

   `lib/core/env_file/api_key.dart`

   ```dart
   class ApiKey {
     final String pixabayAPI = 'YOUR_PIXABAY_API_KEY';
   }
   ```

3. 의존성을 설치하고 실행합니다.

   ```bash
   flutter pub get
   flutter run
   ```

API 키 파일은 `.gitignore`에 포함되어 저장소에 커밋되지 않습니다.

## 설계 포인트

- Data Source는 HTTP 요청과 JSON 응답 수신을 담당합니다.
- Mapper가 DTO를 UI와 분리된 도메인 모델로 변환합니다.
- Repository가 데이터 접근 방식을 감추고 ViewModel에 결과를 제공합니다.
- `Result` 타입으로 성공과 오류 흐름을 구분합니다.

## 현재 범위와 개선 과제

- API 키를 Dart 소스 파일로 관리하는 방식은 데모용입니다. 실제 서비스에서는 키를 노출하지 않는 백엔드 구성이 필요합니다.
- HTTP 상태 코드와 빈 검색 결과 처리를 더 세분화할 수 있습니다.
- 페이지네이션, 이미지 캐시, 단위 테스트를 추가할 수 있습니다.
- 저장소 이름의 `imgea`는 기존 URL 호환을 위해 유지하고 있습니다.
