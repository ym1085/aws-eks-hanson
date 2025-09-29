# AWS EKS Hands On

> EKS 클러스터 생성 후 Hands-On을 진행하기 위한 리포지토리 입니다.

```shell
eks-hands-on/
  ├── infra/                          # 인프라스트럭처 리소스
  │   ├── base/                       # 공통 인프라 설정
  │   │   ├── namespace/
  │   │   │   ├── dev-order.yaml      # dev-order 네임스페이스
  │   │   │   └── kustomization.yaml
  │   │   ├── quotas/
  │   │   │   ├── dev-order-quota.yaml # 리소스 쿼터
  │   │   │   └── kustomization.yaml
  │   │   └── kustomization.yaml      # base 전체 리소스
  │   └── overlays/                   # 환경별 인프라 오버라이드
  │       ├── dev/
  │       │   ├── kustomization.yaml  # dev 환경 패치
  │       │   └── quota-patch.yaml    # dev용 쿼터 조정
  │       ├── stg/
  │       │   ├── kustomization.yaml
  │       │   └── quota-patch.yaml
  │       └── prod/
  │           ├── kustomization.yaml
  │           └── quota-patch.yaml
  └── apps/                           # 애플리케이션 리소스
      ├── base/                       # 공통 앱 설정
      │   ├── order-service/
      │   │   ├── deployment.yaml     # 기본 배포 설정
      │   │   ├── service.yaml        # 서비스 노출
      │   │   ├── configmap.yaml      # 설정 파일
      │   │   └── kustomization.yaml
      │   └── payment-service/
      │       ├── deployment.yaml
      │       ├── service.yaml
      │       └── kustomization.yaml
      └── overlays/                   # 환경별 앱 오버라이드
          ├── dev/
          │   ├── order-service/
          │   │   ├── kustomization.yaml    # dev용 패치 적용
          │   │   ├── replica-patch.yaml    # 레플리카 수 조정
          │   │   └── env-patch.yaml        # 환경변수 오버라이드
          │   └── payment-service/
          │       └── kustomization.yaml
          ├── stg/
          │   ├── order-service/
          │   └── payment-service/
          └── prod/
              ├── order-service/
              └── payment-service/
```