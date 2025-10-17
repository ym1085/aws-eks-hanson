{{- define "app.commonLabels" }}
app: {{ .Values.app.labels.app | default "order-service" }}
env: {{ .Values.app.labels.env | default "dev" }}
project: {{ .Values.app.labels.project | default "ecommerce" }}
team: {{ .Values.app.labels.team | default "order-team" }}
release: {{ .Release.Name }}
chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_"}}
heritage: Helm
{{- end }}

{{- define "app.selectorLabels" }}
app: {{ .Values.app.labels.app | default "order-service" }}
env: {{ .Values.app.labels.env | default "dev" }}
{{- end }}