void api_putchar(int c);
void api_putstr(char *s);
int api_openwin(char *buf, int xsiz, int ysiz, int col_inv, char *title);
void api_putstrwin(int win, int x, int y, int col, int len, char *str);
void api_boxfilwin(int win, int x0, int y0, int x1, int y1, int col);

void main()
{
  //    char b[1024];
  //    b[1280] = 'A';
  // while (1)
  // {
  // }
  //     api_putchar('A');
  char buf[150 * 50];
  int win;
  win = api_openwin(buf, 150, 50, -1, "hello");
  api_boxfilwin(win, 8, 36, 141, 43, 3);
  api_putstrwin(win, 28, 28, 0, 12, "hello, world");

  return;
}
