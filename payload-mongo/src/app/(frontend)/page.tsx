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
          <h1>🚀 Payload CMS v2.0</h1>

          <h2>CI/CD Pipeline funcionando correctamente</h2>

          <p>
            Esta versión ha sido desplegada automáticamente mediante GitHub
            Actions.
          </p>

          <p>
            <strong>Versión:</strong> 2.0
          </p>

          <p>
            <strong>Fecha:</strong> 10/08/2026
          </p>
        </>
      ) : (
        <>
          <h1>👋 Bienvenido {user.email}</h1>

          <p>La versión 2.0 se encuentra desplegada correctamente.</p>
        </>
      )}

      <hr />

      <h2>Infraestructura</h2>

      <ul
        style={{
          display: 'inline-block',
          textAlign: 'left',
        }}
      >
        <li>✅ GitHub (simulando Bitbucket)</li>
        <li>✅ GitHub Actions (simulando Bitbucket Pipelines)</li>
        <li>✅ Payload CMS</li>
        <li>✅ Docker</li>
        <li>✅ Amazon ECR</li>
        <li>✅ Amazon ECS Fargate</li>
        <li>✅ Application Load Balancer</li>
        <li>✅ MongoDB Atlas</li>
        <li>✅ Terraform</li>
      </ul>

      <hr />

      <p>
        <a href="/admin">Panel de administración</a>
      </p>

      <p>
        <a
          href="https://payloadcms.com/docs"
          target="_blank"
          rel="noreferrer"
        >
          Documentación de Payload CMS
        </a>
      </p>
    </main>
  )
}
