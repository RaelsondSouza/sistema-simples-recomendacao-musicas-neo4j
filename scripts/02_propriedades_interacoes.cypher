// Adiciona a propriedade em todos os relacionamentos OUVIU

MATCH (:Usuario)-[r:OUVIU]->(:Musica)
SET r.vezes = 5
RETURN r;


// Adiciona a propriedade em todos os relacionamentos CURTIU

MATCH (:Usuario)-[r:CURTIU]->(:Musica)
SET r.data = '2026-11-14'
RETURN r;


// Adiciona a propriedade em todos os relacionamentos SEGUE

MATCH (:Usuario)-[r:SEGUE]->(:Artista)
SET r.desde = 2025
RETURN r;