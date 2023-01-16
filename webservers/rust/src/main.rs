use actix_web::{get, post, Responder, HttpResponse, HttpServer, App};

#[get("/")]
async fn hello() -> impl Responder {
    HttpResponse::Ok().body("Hello world!")
}

#[post("/echo")]
async fn echo(req_body: String) -> impl Responder {
    HttpResponse::Ok().body(req_body)
}

#[actix_web::main]
async fn main() -> std::io::Result<()>{
    let fut = HttpServer::new(|| {
        App::new()
            .service(hello)
            .service(echo)
    })
    .bind(("127.0.0.1", 6969))?
    .run();
    println!("Server running at http://127.0.0.1:6969/");
    fut.await?;
    Ok(())
}
