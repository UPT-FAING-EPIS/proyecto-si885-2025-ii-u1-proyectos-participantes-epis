# 📊 Plataforma de Análisis de Despliegue de Proyectos

## 🎓 Universidad Privada de Tacna
**Facultad de Ingeniería - Escuela Profesional de Ingeniería de Sistemas**

**Curso:** Inteligencia de Negocios  
**Docente:** Mag. Patrick Cuadros Quiroga

## 👥 Integrantes del Equipo
- **Ancco Suaña, Bruno Enrique** (2023077472)
- **Ayala Ramos, Carlos Daniel** (2022074266)  
- **Loyola Vilca, Renzo Fernando** (2021072615)

---

## ❗ Problemática

Actualmente, la **Escuela Profesional de Ingeniería de Sistemas** de la Universidad Privada de Tacna no dispone de un método sistemático para conocer qué herramientas, lenguajes y plataformas de despliegue están siendo utilizados en la práctica por sus estudiantes.

Las decisiones sobre:
- ¿Qué tecnologías enseñar en el plan de estudios?
- ¿Qué convenios con proveedores de nube promover (AWS Educate, Azure for Students)?
- ¿Dónde enfocar los recursos de capacitación?

Se basan en **suposiciones generales del mercado** y no en **datos concretos del propio ecosistema universitario**.

---

## 🎯 Objetivo General

Desarrollar un **Dashboard de Business Intelligence** que permita analizar y visualizar las tecnologías y servicios de despliegue utilizados en los proyectos de software alojados en los repositorios de la comunidad de la Escuela Profesional de Ingeniería de Sistemas de la Universidad Privada de Tacna.

---

## ✅ Objetivos Específicos

1. **Visualizar un panorama general** de las tecnologías de despliegue más utilizadas
2. **Explorar proyectos de manera individual** para conocer sus detalles técnicos
3. **Filtrar los proyectos por ciclo académico y por curso** para analizar tendencias específicas
4. **Realizar búsquedas por palabra clave** y combinar filtros para análisis más complejos
5. **Identificar las tecnologías de despliegue específicas** utilizadas en cada proyecto

---

## 🛠️ Tecnologías Utilizadas

### Backend & Análisis de Datos
- **Python 🐍** → Extracción y análisis de datos de repositorios
  - `pandas` → Procesamiento de datos
  - `requests` → Conexión con APIs
  - `json` → Manejo de archivos de configuración

### APIs & Integración
- **GitHub API** 🔗 → Acceso a repositorios y metadatos de proyectos

### Infraestructura & Despliegue
- **Google Cloud Platform (GCP)** ☁️
- **Terraform** 🏗️ → Infraestructura como código
- **GitHub Actions** ⚙️ → CI/CD automatizado
- **Infracost** 💰 → Análisis de costos de infraestructura

### Visualización & Dashboard
- **Microsoft Power BI** 📊 → Dashboard interactivo principal
- **HTML/CSS/JavaScript** 🌐 → Interfaz web complementaria

---

## 📡 Metodología de Análisis

### 1. **Conexión Segura a Repositorios**
- Implementación de autenticación OAuth con GitHub
- Acceso consentido a repositorios de estudiantes y docentes
- Respeto a la privacidad y políticas de datos

### 2. **Análisis Automatizado de Proyectos**
```python
# Archivos de configuración analizados:
- docker-compose.yml    # Docker & contenedores
- package.json          # Node.js & NPM
- requirements.txt      # Python & pip
- Dockerfile           # Configuración Docker
- vercel.json          # Despliegue en Vercel
- netlify.toml         # Configuración Netlify
- .github/workflows/   # GitHub Actions
```

### 3. **Identificación de Tecnologías de Despliegue**
- **Servicios en la Nube:** AWS, Azure, Google Cloud, Heroku
- **Plataformas Serverless:** Vercel, Netlify, Railway
- **Contenedores:** Docker, Kubernetes
- **CI/CD:** GitHub Actions, GitLab CI, Jenkins
- **Servidores Locales:** Nginx, Apache

### 4. **Procesamiento y Almacenamiento**
- Limpieza y normalización de datos extraídos
- Almacenamiento estructurado en MySQL
- Versionado histórico para análisis de tendencias

### 5. **Visualización Interactiva**
- Dashboard principal en Power BI
- Filtros dinámicos por carrera, curso, periodo académico

---

## 📊 Historias de Usuario Implementadas

### 🔄 **Backlog (En Planificación)**
- **HU-08:** Combinación de Filtros
- **HU-06:** Búsqueda por Palabra Clave  
- **HU-07:** Identificación de Tecnologías de Despliegue

### ✅ **Ready (Listo para Desarrollo)**
- **HU-04:** Filtrado por Curso
- **HU-05:** Vista Detallada del Proyecto
- **HU-03:** Filtrado por Ciclo Académico

### 🚀 **In Progress (En Desarrollo)**
- **HU-02:** Exploración de Proyectos Individuales
- **HU-01:** Panorama General de Tecnologías

---

## 📈 Ejemplo de Visualizaciones

### Dashboard Principal en Power BI:
1. **Gráfico de barras** → Tecnologías de despliegue más utilizadas
2. **Gráfico circular** → Distribución de servicios en la nube
3. **Línea temporal** → Evolución de adopción tecnológica por semestre
4. **Tabla interactiva** → Ranking de proyectos por tecnología
6. **Filtros dinámicos** → Por ciclo académico, curso, tecnología

---

## 🚀 Resultados Esperados

### Para la Institución:
- **Toma de decisiones informada** sobre actualización curricular
- **Optimización de recursos** en licencias y convenios tecnológicos
- **Identificación de tendencias** emergentes en el ecosistema universitario
- **Mejora en procesos de acreditación** con datos cuantificables

### Para Estudiantes:
- **Visibilidad de tendencias** tecnológicas entre compañeros
- **Orientación para aprendizaje** basada en datos reales
- **Inspiración para proyectos** mediante exploración de casos exitosos

### Para Docentes:
- **Adaptación de contenidos** según herramientas realmente utilizadas
- **Propuesta de nuevos talleres** basada en demanda real
- **Evaluación del impacto** de la enseñanza en proyectos prácticos

---

## 📎 Enlaces del Proyecto

- 🔗 **Dashboard Power BI:** *(Se añadirá enlace una vez desplegado)*
- 🔗 **Repositorio GitHub:** [proyecto-si885-2025-ii-u1-proyectos-participantes-epis](https://github.com/universidad/proyecto-si885-2025-ii-u1-proyectos-participantes-epis)
- 🔗 **Documentación Técnica:** `/docs_md/`

---

## 📌 Roadmap Futuro

- **Análisis de calidad de código** → Métricas de best practices
- **Recomendaciones personalizadas** → Sugerencias de tecnologías por perfil
- **Análisis multi-facultad** → Expandir a otras carreras de ingeniería
- **Integración GitLab** → Soporte para múltiples plataformas de repositorios  
