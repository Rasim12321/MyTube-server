import { NestFactory } from '@nestjs/core'
import { AppModule } from './app.module'
import { PrismaService } from './prisma.service'
import serverlessExpress from '@vendia/serverless-express'

let server

async function bootstrap() {
	const app = await NestFactory.create(AppModule)

	const prismaService = app.get(PrismaService)
	await prismaService.enableShutdownHooks(app)

	// Прочие настройки, пайпы, cors и т.д.

	await app.init()

	const expressApp = app.getHttpAdapter().getInstance()

	server = server ?? serverlessExpress({ app: expressApp })

	return server
}

// Экспорт для Vercel
export const handler = async (event, context) => {
	server = server ?? (await bootstrap())
	return server(event, context)
}

// Локальный запуск (если нужен)
if (!process.env.VERCEL) {
	bootstrap().then(() => {
		const port = process.env.PORT || 4200
		console.log(`Server started on port ${port}`)
		// слушаем порт здесь, если нужно
	})
}
