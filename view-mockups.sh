#!/bin/bash

echo "========================================"
echo "  REHAB TRACKER MOCKUP VIEWER"
echo "========================================"
echo ""
echo "Starting local web server..."
echo ""

# Kill any existing Python servers on port 8000
lsof -ti:8000 | xargs kill -9 2>/dev/null

# Start Python server
python3 -m http.server 8000 &
SERVER_PID=$!

sleep 2

echo "✅ Server is running!"
echo ""
echo "📂 Open these URLs in your browser:"
echo ""
echo "🎨 ALL MOCKUPS (START HERE):"
echo "   http://localhost:8000/mockups-index.html"
echo ""
echo "Individual mockups:"
echo "   1. http://localhost:8000/mockup-1-clinical-wellness.html"
echo "   2. http://localhost:8000/mockup-2-athletic-performance.html"
echo "   3. http://localhost:8000/mockup-3-wellness-sanctuary.html"
echo "   4. http://localhost:8000/mockup-4-modern-dashboard.html"
echo "   5. http://localhost:8000/mockup-5-mountain-recovery.html"
echo "   6. http://localhost:8000/mockup-6-minimal-focus.html"
echo ""
echo "Press Ctrl+C to stop the server"
echo "========================================"

# Wait for Ctrl+C
trap "kill $SERVER_PID; exit 0" INT
wait $SERVER_PID
