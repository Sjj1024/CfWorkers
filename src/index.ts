export interface Env {
	// If you set another name in the Wrangler config file for the value for 'binding',
	// replace "DB" with the variable name you defined.
	DB: D1Database;
}

export default {
	async fetch(request, env): Promise<Response> {
		const { pathname } = new URL(request.url);
		if (pathname === '/api/beverages') {
			// If you did not use `DB` as your binding name, change it here
			const { results } = await env.DB.prepare('SELECT * FROM Customers').all();
			return Response.json(results);
		}
		return new Response('Call /api/beverages to see everyone who works at Bs Beverages');
	},
} satisfies ExportedHandler<Env>;
