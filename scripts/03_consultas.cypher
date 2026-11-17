// Consulta 1: mostrar todo o grafo

MATCH (n)-[r]->(n2)
RETURN n, r, n2;

// Consulta 2: mostrar as músicas curtidas por João

MATCH (joao:Usuario {id: 'U01'})-[:CURTIU]->(musica:Musica)
RETURN joao.Nome, musica.titulo;

// Consulta 3: recomendação para João

MATCH (joao:Usuario {id: 'U01'})-[:CURTIU]->(musica:Musica)<-[:CURTIU]-(outroUsuario:Usuario)-[:CURTIU]->(recomendacao:Musica)
RETURN joao.Nome, musica.titulo, outroUsuario.Nome, recomendacao.titulo;