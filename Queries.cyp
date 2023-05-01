// Nodes/Vertices are written in parenthesis
// Edges/Relationships are written in square brackets

// Match Clause Use
    Match(p:person)
    Return p
    // This will return all the nodes in the graph

   Match (p:person)-[r:ACTED_IN]->(m:movie)
    Return p,r,m
    // This will return person, movie and relationship between them

// Match Clause with Where Clause
    EXAMPLE 1:
        Match (p:Person)
        Where p.name = "Tom Hanks"
        Return p
        //   OR
        Match (p:person{name:"Tom Hanks"})
        Return p
        // This will return all the nodes with name Tom Hanks
    
    EXAMPLE 2:
        Match (p:Person)-[r:ACTED_IN]->(m:Movie)
        Where m.title = "The Matrix" And p.name = "Tom Hanks"
        Return p,r,m
        //  OR
        Match(p:Person{name:"Tom Hanks"})-[r:Acted_in]->(m:Movie{title:"The Matrix"})
        return p,r,m

    example 3:
        Match (p:Person)-[r:ACTED_IN]->(m:Movie)
        Where m.title = "The Matrix" Or p.name = "Tom Hanks"
        return p,r,m.

    // Query Find the year that Kevin Bacon was born. This value is stored in the born property.
        Match (p:Person{name:"Kevin Bacon"})
        return p.born

    


     







