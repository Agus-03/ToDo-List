# Trabajo Práctico Integrador – Checklist y Avances

Este documento registra el cumplimiento de los requisitos del integrador y las decisiones técnicas tomadas.

---

## 🎯 Requisitos del Proyecto Integrador

### Aplicación completa (frontend + backend + DB)
- [x] Aplicación base funcionando en Node + Express + MongoDB
- [x] Frontend renderizado con EJS
- [x] Backend Express con rutas y controladores
- [x] Base de datos MongoDB local con modelos `Item` y `List`

### Repositorio Git público
- [x] Repo forkeado en GitHub bajo mi usuario
- [ ] Commits organizados
- [ ] Branches: `master` / `develop` / `feature/*`
- [ ] Política de branches: PR obligatorio hacia master

### Build y Deploy automatizados
- [ ] Pipeline CI en Azure DevOps
- [ ] Ejecutar unit tests
- [ ] Ejecutar linting
- [ ] Ver reportes de test y coverage
- [ ] Deploy automático a QA si los tests pasan
- [ ] Pruebas de integración en QA con Cypress
- [ ] Aprobación manual para PROD
- [ ] Deploy a PROD usando la misma imagen

### Tests
- [ ] Unit tests con Jest
- [ ] Coverage generado
- [ ] Test de integración (Cypress)
- [ ] Test cases escritos

---

## 📌 Decisiones Técnicas

### Dependencias
- Se mantiene:
  - Mongoose 5.x (no se actualiza a 8.x para evitar romper la app)
  - EJS 2.x (estable con código existente)
- Límite técnico: las vulnerabilidades críticas no afectan el flujo del integrador y no requieren migración mayor.

### Entornos
- Local: Node 20.x
- QA: Docker + Azure Web App
- PROD: Docker + Azure Web App con aprobación manual

### Herramientas
- ESLint + Prettier
- Jest para unit tests
- Cypress para tests E2E
- Docker para deploys
- Azure DevOps Pipelines para CI/CD

### Imágenes y despliegue
- Una sola imagen Docker para todos los entornos  
  Configurada mediante variables de entorno.

---

## 📅 Avances por Fase

### Fase 1 – Preparación del Proyecto
- [x] App funciona localmente
- [x] Script `npm start` configurado
- [x] Eliminado engines Node 10
- [x] Dependencias instaladas
- [x] Documentación base creada

### Fase 2 – Dockerización
- [x] Crear Dockerfile
- [x] Crear docker-compose para QA y Prod
- [x] Variables de entorno integradas
- [x] Creo imagen y la pruebo local

### Fase 3 – Calidad del Proyecto
- [ ] Jest instalado y configurado
- [ ] Primer test unitario funcionando
- [ ] Coverage funcionando
- [ ] ESLint + Prettier instalado y configurado

### Fase 4 - CI: Build Pipeline en Azure DevOps
- [ ] Construir imagen Docker en CI
- [ ] Subir imagen a Azure Container Registry (ACR)
- [ ] Ejecutar tests
- [ ] Generar coverage
- [ ] Publicar reportes

### Fase 5 - CD QA: Deploy Automático + Pruebas de Integración
- [ ] Levantar contenedores en entorno QA
- [ ] Ejecutar pruebas E2E de creación y borrado de tareas
- [ ] Validar rutas dinámicas (listas personalizadas)
- [ ] Publicar reportes

### Fase 6 - Aprobación manual + Deploy a Producción
- [ ] Aprobación manual en ADO
- [ ] Verificación del estado de deployment
- [ ] Publicación final

---

## 📁 Nota final
Este archivo será actualizado a medida que se completa cada fase del integrador.
