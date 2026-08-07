import { headers as getHeaders } from 'next/headers.js'
import { getPayload } from 'payload'
import config from '@/payload.config'
import './styles.css'

export default async function HomePage() {
  const headers = await getHeaders()
  const payloadConfig = await config
  const payload = await getPayload({ config: payloadConfig })

  const { user } = await payload.auth({ headers })

  return (
    <main
      style={{
        maxWidth: '900px',
        margin: '60px auto',
        fontFamily: 'Arial, sans-serif',
        textAlign: 'center',
      }}
    >
      {!user ? (
        <>
          <h1>🚀 ECS CI/CD Pipeline Test</h1>
          <p>
            Si estás viendo esta página significa que el despliegue desde
            GitHub Actions hacia Amazon ECS ha funcionado correctamente.
          </p>
        </>
      ) : (
        <>
          <h1>🚀 Bienvenido {user.email}</h1>
          <p>La nueva versión de la aplicación ya está desplegada.</p>
        </>
      )}

      <hr />

      <h2>Enlaces</h2>

      <p>
        <a href="/admin">Ir al panel de administración</a>
      </p>

      <p>
        <a href="https://payloadcms.com/docs" target="_blank">
          Documentación de Payload CMS
        </a>
      </p>

      <hr />

      <p>
        Proyecto desplegado mediante:
      </p>

      <ul
        style={{
          display: 'inline-block',
          textAlign: 'left',
        }}
      >
        <li>✅ GitHub Actions</li>
        <li>✅ Docker</li>
        <li>✅ Amazon ECR</li>
        <li>✅ Amazon ECS Fargate</li>
        <li>✅ Application Load Balancer</li>
        <li>✅ MongoDB Atlas</li>
        <li>✅ Terraform</li>
      </ul>
    </main>
  )
}
