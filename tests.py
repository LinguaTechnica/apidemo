import unittest
from app import app


class ApiTestCase(unittest.TestCase):
    def setUp(self):
        app.config.testing = True
        self.app = app

    def test_home(self):
        client = self.app.test_client()
        response = client.get('/')

        self.assertEqual(response.status_code, 200)

    def test_greeting(self):
        client = self.app.test_client()
        response = client.get('/greet/jo')

        self.assertTrue('jo' in str(response.data))


if __name__ == "__main__":
    unittest.main()
