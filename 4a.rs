use std::io;

fn main() {
    let mut input_text = String::new();
    io::stdin()
        .read_line(&mut input_text)
        .expect("");
        
    let n = input_text.trim().parse::<u32>().unwrap();
    
    if n > 2 && n % 2 == 0 {
        println!("YES");
    }
    else {
        println!("NO")
    }
}