import dns.resolver

def query_dns(domain):
    try:
        answers = dns.resolver.resolve(domain, 'A')
        for answer in answers:
            print(f"{domain} resolves to {answer.address}")
    except dns.resolver.NoAnswer:
        print(f"No A record found for {domain}")
    except dns.resolver.NXDOMAIN:
        print(f"Domain {domain} does not exist")
    except dns.resolver.Timeout:
        print("DNS query timed out")
    except dns.resolver.NoNameservers:
        print("No name servers available")

# Example usage
if __name__ == "__main__":
    domain = "example.com"
    query_dns(domain)
