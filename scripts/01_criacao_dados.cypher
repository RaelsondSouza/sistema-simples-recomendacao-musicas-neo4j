// Criação dos usuários, músicas, artistas e gêneros

CREATE
(u1:Usuario {id: 'U01', Nome: 'João', Idade: 22}),
(u2:Usuario {id: 'U02', Nome: 'Maria', Idade: 25}),
(u3:Usuario {id: 'U03', Nome: 'Pedro', Idade: 21}),
(u4:Usuario {id: 'U04', Nome: 'Ana', Idade: 24}),

(m1:Musica {id: 'M01', titulo: 'Blinding Lights', ano: 2019}),
(m2:Musica {id: 'M02', titulo: 'Starboy', ano: 2016}),
(m3:Musica {id: 'M03', titulo: 'Save Your Tears', ano: 2020}),
(m4:Musica {id: 'M04', titulo: 'Levitating', ano: 2020}),
(m5:Musica {id: 'M05', titulo: 'Don''t Start Now', ano: 2019}),

(a1:Artista {id: 'A01', nome: 'The Weeknd'}),
(a2:Artista {id: 'A02', nome: 'Dua Lipa'}),
(a3:Artista {id: 'A03', nome: 'Daft Punk'}),

(g1:Genero {id: 'G01', nome: 'Pop'}),
(g2:Genero {id: 'G02', nome: 'R&B'}),
(g3:Genero {id: 'G03', nome: 'Eletrônica'}),

// Interações de João

(u1)-[:OUVIU]->(m1),
(u1)-[:OUVIU]->(m2),
(u1)-[:CURTIU]->(m1),
(u1)-[:CURTIU]->(m3),
(u1)-[:SEGUE]->(a1),
(u1)-[:SEGUE]->(a3),

// Interações de Maria

(u2)-[:OUVIU]->(m1),
(u2)-[:OUVIU]->(m4),
(u2)-[:CURTIU]->(m2),
(u2)-[:CURTIU]->(m4),
(u2)-[:SEGUE]->(a1),
(u2)-[:SEGUE]->(a2),

// Interações de Pedro

(u3)-[:OUVIU]->(m2),
(u3)-[:OUVIU]->(m5),
(u3)-[:CURTIU]->(m2),
(u3)-[:CURTIU]->(m5),
(u3)-[:SEGUE]->(a1),
(u3)-[:SEGUE]->(a3),

// Interações de Ana

(u4)-[:OUVIU]->(m4),
(u4)-[:OUVIU]->(m5),
(u4)-[:CURTIU]->(m1),
(u4)-[:CURTIU]->(m4),
(u4)-[:SEGUE]->(a1),
(u4)-[:SEGUE]->(a2),

// Gêneros das músicas

(m1)-[:PERTENCE]->(g1),
(m2)-[:PERTENCE]->(g2),
(m2)-[:PERTENCE]->(g3),
(m3)-[:PERTENCE]->(g1),
(m4)-[:PERTENCE]->(g1),
(m5)-[:PERTENCE]->(g1),
(m5)-[:PERTENCE]->(g3),

// Artistas e suas músicas

(a1)-[:CANTOU]->(m1),
(a1)-[:CANTOU]->(m2),
(a1)-[:CANTOU]->(m3),
(a2)-[:CANTOU]->(m4),
(a2)-[:CANTOU]->(m5);