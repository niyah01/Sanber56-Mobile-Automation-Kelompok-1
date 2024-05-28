from faker import Faker

def generate_random_username():
    fake = Faker()
    return fake.user_name()

if __name__ == "__main__":
    print(generate_random_username())
