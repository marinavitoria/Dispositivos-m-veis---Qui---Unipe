package com.example.meucurso

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class DetalhesDisciplinaActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_detalhes_disciplina)

        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())

            v.setPadding(
                systemBars.left,
                systemBars.top,
                systemBars.right,
                systemBars.bottom
            )

            insets
        }

        val txtNomeDisciplina = findViewById<TextView>(R.id.txtNomeDisciplina)
        val txtDescricao = findViewById<TextView>(R.id.txtDescricao)
        val txtCargaHoraria = findViewById<TextView>(R.id.txtCargaHoraria)
        val txtModalidade = findViewById<TextView>(R.id.txtModalidade)
        val txtNivel = findViewById<TextView>(R.id.txtNivel)
        val txtPreRequisito = findViewById<TextView>(R.id.txtPreRequisito)
        val btnVoltar = findViewById<Button>(R.id.btnVoltar)

        val nome = intent.getStringExtra("nome")
        val descricao = intent.getStringExtra("descricao")
        val cargaHoraria = intent.getStringExtra("cargaHoraria")
        val modalidade = intent.getStringExtra("modalidade")
        val nivel = intent.getStringExtra("nivel")
        val preRequisito = intent.getStringExtra("preRequisito")

        txtNomeDisciplina.text = nome
        txtDescricao.text = descricao
        txtCargaHoraria.text = "Carga horária: $cargaHoraria"
        txtModalidade.text = "Modalidade: $modalidade"

        // Indicação do nível da disciplina
        txtNivel.text = "Nível: $nivel"

        txtPreRequisito.text = "Pré-requisito: $preRequisito"

        btnVoltar.setOnClickListener {
            finish()
        }
    }
}