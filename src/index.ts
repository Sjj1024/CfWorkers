import { PrismaClient } from './generated/prisma';
import { PrismaD1 } from '@prisma/adapter-d1';

export interface Env {
	DB: D1Database;
}

// 数据库操作
async function handleDB(request: Request, env: Env) {
	const adapter = new PrismaD1(env.DB);
	const prisma = new PrismaClient({ adapter });
	const users = await prisma.user.findMany();
	return users;
}

// 处理请求
async function handleRequest(request: Request) {
	const url = new URL(request.url);
	if (url.pathname === '/api') {
		return new Response('API响应', { status: 200 });
	} else if (url.pathname === '/about') {
		return new Response('关于页面', { status: 200 });
	} else if (url.pathname.startsWith('/users/')) {
		const userId = url.pathname.split('/')[2];
		return new Response(`用户ID: ${userId}`, { status: 200 });
	} else {
		return new Response('未找到页面', { status: 404 });
	}
}

export default {
	async fetch(request, env, ctx): Promise<Response> {
		return handleRequest(request);
	},
} satisfies ExportedHandler<Env>;
