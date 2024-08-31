package com.example.loginapp01

import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class UserActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_user)

        val nombre = intent.getStringExtra("nombre")
        val correo = intent.getStringExtra("correo")

        val welcomeMessage = findViewById<TextView>(R.id.welcome_message)
        val emailTextView = findViewById<TextView>(R.id.email_textview)

        welcomeMessage.text = "Bienvenido, $nombre!"
        emailTextView.text = "Correo: $correo"
    }
}
