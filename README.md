# LowHanging
A simple script that makes it easy to test common web application vulnerabilities known as Low Hanging fruits,  including SSL &amp; TLS scan, HTTP Methods allowed, Security Headers, cookie Secure Flags and more.

# Installation
Simply clone into a directory and make executable.

```
 chmod +x lowhanging.sh
```

# Usage

```
 ./lowhanging.sh <test> <hosts file> 
```

test types:
+ lh_sslscan : Check for SSL & TLS certificates
+ lh_sheader : Check for security headers
+ lh_hmethods : Check for http methods allowed
+ lh_sflags : Check for Secure Flags set on cookies

# Progress
I plan on adding more functionality to it in the coming days.
Don't hesitate to share ideas for improving this script.
