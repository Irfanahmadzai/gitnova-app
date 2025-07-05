package com.gitnova.app

import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.biometric.BiometricManager
import androidx.biometric.BiometricPrompt
import androidx.core.content.ContextCompat
import java.util.concurrent.Executor

class MainActivity : AppCompatActivity() {
    private lateinit var executor: Executor
    private lateinit var biometricPrompt: BiometricPrompt
    private lateinit var promptInfo: BiometricPrompt.PromptInfo

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        executor = ContextCompat.getMainExecutor(this)
        biometricPrompt = BiometricPrompt(this, executor,
            object : BiometricPrompt.AuthenticationCallback() {
                override fun onAuthenticationSucceeded(result: BiometricPrompt.AuthenticationResult) {
                    super.onAuthenticationSucceeded(result)
                    showPremiumFeatures()
                }

                override fun onAuthenticationFailed() {
                    super.onAuthenticationFailed()
                    askBackupCode()
                }
            })

        promptInfo = BiometricPrompt.PromptInfo.Builder()
            .setTitle("GITNova Secure Access")
            .setSubtitle("Verify using your fingerprint")
            .setNegativeButtonText("Use Backup Code")
            .build()

        biometricPrompt.authenticate(promptInfo)
    }

    private fun askBackupCode() {
        val builder = android.app.AlertDialog.Builder(this)
        builder.setTitle("Enter Backup Code")

        val input = android.widget.EditText(this)
        input.hint = "my country name is afghanistan and this is my logo's password((($$$$$)))"
        builder.setView(input)

        builder.setPositiveButton("Verify") { _, _ ->
            val code = input.text.toString()
            if (code == "my country name is afghanistan and this is my logo's password((($$$$$)))") {
                showPremiumFeatures()
            } else {
                Toast.makeText(this, "Wrong Code", Toast.LENGTH_SHORT).show()
            }
        }

        builder.setNegativeButton("Cancel") { dialog, _ -> dialog.cancel() }

        builder.show()
    }

    private fun showPremiumFeatures() {
        Toast.makeText(this, "Access Granted! Premium Unlocked.", Toast.LENGTH_LONG).show()
    }
}
