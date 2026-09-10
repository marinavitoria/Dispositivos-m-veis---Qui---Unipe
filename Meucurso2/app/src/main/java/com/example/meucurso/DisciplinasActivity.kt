package com.example.meucurso

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity

class DisciplinasActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.activity_disciplinas)

        val btnProgramacao = findViewById<Button>(R.id.btnProgramacao)
        val btnBancoDados = findViewById<Button>(R.id.btnBancoDados)
        val btnEngenharia = findViewById<Button>(R.id.btnEngenharia)
        val btnWeb = findViewById<Button>(R.id.btnWeb)
        val btnMobile = findViewById<Button>(R.id.btnMobile)
        val btnIA = findViewById<Button>(R.id.btnIA)
        val btnVoltar = findViewById<Button>(R.id.btnVoltar)

        btnProgramacao.setOnClickListener {
            abrirDetalhes(
                "Programação",
                "Estudo dos conceitos fundamentais de programação e desenvolvimento de algoritmos.",
                "80 horas",
                "Presencial",
                "Básico",
                "Não possui"
            )
        }

        btnBancoDados.setOnClickListener {
            abrirDetalhes(
                "Banco de Dados",
                "Estudo da organização, armazenamento e gerenciamento de informações em bancos de dados.",
                "80 horas",
                "Presencial",
                "Intermediário",
                "Programação"
            )
        }

        btnEngenharia.setOnClickListener {
            abrirDetalhes(
                "Engenharia de Software",
                "Estudo dos processos, métodos e ferramentas utilizados para desenvolver e manter sistemas de software.",
                "60 horas",
                "Presencial",
                "Intermediário",
                "Programação"
            )
        }

        btnWeb.setOnClickListener {
            abrirDetalhes(
                "Desenvolvimento Web",
                "Desenvolvimento de aplicações e páginas para a internet utilizando tecnologias web.",
                "80 horas",
                "Presencial",
                "Intermediário",
                "Programação"
            )
        }

        btnMobile.setOnClickListener {
            abrirDetalhes(
                "Desenvolvimento Mobile",
                "Desenvolvimento de aplicativos para dispositivos móveis utilizando diferentes tecnologias e ferramentas.",
                "80 horas",
                "Presencial",
                "Intermediário",
                "Programação"
            )
        }

        btnIA.setOnClickListener {
            abrirDetalhes(
                "Inteligência Artificial",
                "Estudo de conceitos e técnicas utilizadas para desenvolver sistemas capazes de realizar tarefas inteligentes.",
                "60 horas",
                "Presencial",
                "Avançado",
                "Programação"
            )
        }

        btnVoltar.setOnClickListener {
            finish()
        }
    }

    private fun abrirDetalhes(
        nome: String,
        descricao: String,
        cargaHoraria: String,
        modalidade: String,
        nivel: String,
        preRequisito: String
    ) {
        val intent = Intent(this, DetalhesDisciplinaActivity::class.java)

        intent.putExtra("nome", nome)
        intent.putExtra("descricao", descricao)
        intent.putExtra("cargaHoraria", cargaHoraria)
        intent.putExtra("modalidade", modalidade)
        intent.putExtra("nivel", nivel)
        intent.putExtra("preRequisito", preRequisito)

        startActivity(intent)
    }
}