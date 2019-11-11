const getUsers = (request, response) => 
{
    pool.query('SELECT * FROM users ORDER BY id ASC', (error, result)=>{

    if (error) 
    {
        throw error
    } 
    
    response.status(200).json(results.rows)
    });
}