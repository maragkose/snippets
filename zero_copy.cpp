// Copy the contents of "infile" to "outfile", using plain read() for 
// 
// // "infile" but a ZeroCopyOutputStream for "outfile". 
//
int main() {
int infd = open("infile", O_RDONLY); 
int outfd = open("outfile", O_WRONLY); 
ZeroCopyOutputStream* output = new FileOutputStream(outfd);

void* buffer; int size; 
    while (output->Next(&buffer, &size)) { 
        int bytes = read(infd, buffer, size); 
        if (bytes < size) { // Reached EOF. 
        output->BackUp(size - bytes); 
        break; 
    } 
}

delete output; close(infd); close(outfd);
}
