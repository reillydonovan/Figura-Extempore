
int y = 50;


String[] art = { 
  "this", "that", "the", "a", "our"
};
String[] adj = {
"grey", "white", "black", "green", "red", "blue", "yellow", 
"magenta", "cyan", "rapid", "curved", "striped", "fast", "fresh",
"odd", "orange", "high", "swift", "determined", "lucky", "farthest",
"last", "tiny", "large", "huge", "many", "few", "one", "several",
"round", "purple", "brown", "grey", 

};
String[] nou = {
  "drawing", "sketch", "outline", "body", "figure", "picture", 
  "design", "plan", "act", "routine", "skit", "scene", "draft", 
  "render", "illustration", "representation", "trace", "lines", 
  "mark", "scratch", "impression", "etching", "sihouette", "contour", 
  "form", "shape", "profile", "shadow", "person", "individual", 
  "man", "woman", "character", "model", "statue", "pattern", 
  "diagram", "design", "plan", "portrait", "portrayal", "depiction", 
  "scene", "rendering"
};
String[] ver = {
  "moves", "observes", "shifts", "leaves", "goes", "changes", 
  "transfers", "carries", "stirs", "advances", "sculpts", "captures", 
  "catches", "engages", "inspires", "infers", "gathers", "travels",
  "cruises", "attracts", "repels", "opens", "closes", "extracts", 
  "withdraws", "occupies", "absorbs", "captures", "enthralls", "captivates",
  "tugs", "drags", "pulls", "plucks", "tweaks", "tows", "yanks"
};
String[] pre = {
  "above", "inside", "behind", "in front of", "below", "on top of",
  "outside", "between"
};


String write_word(String[] words) {
  int n = int(random(words.length));
  String word = words[n];
  return word;
}

String new_sentence() {
  String sentence = "";
  
  sentence += write_word(art)+s;
  sentence += write_word(adj)+s;
  sentence += write_word(nou)+s;

  sentence += write_word(ver)+s;
  sentence += write_word(pre)+s;

  sentence += write_word(art)+s;
  sentence += write_word(adj)+s;
  sentence += write_word(nou);
  
  return sentence;
}

String new_title() {
  String sentence = "";
  
  sentence += write_word(art)+u;
  sentence += write_word(adj)+u;
  sentence += write_word(nou)+u;

  sentence += write_word(ver)+u;
  sentence += write_word(pre)+u;

  sentence += write_word(art)+u;
  sentence += write_word(adj)+u;
  sentence += write_word(nou);
  
  return sentence;
}

